import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:hourtag/const/api_const.dart';
import 'package:hourtag/home/dashboard/model/company_profile/company_profile_model.dart';
import 'package:hourtag/home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';
import 'package:hourtag/home/dashboard/model/start_shift/start_shift_model.dart';
import 'package:hourtag/home/dashboard/model/team_activity/team_activity_model.dart';
import 'package:hourtag/home/dashboard/model/user_profile/user_profile_model.dart';
import 'package:hourtag/home/dashboard/repo/dashboard_repo.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:socket_io_client/socket_io_client.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(this.authToken,
      {required UserProfileModel userProfileModel,
      required List<TeamActivityModel> teamdata,
      required OngoingShiftModel ongoingShiftModel,
      required CompanyProfileModel companyProfileModel,
      required int index})
      : super(DashboardState.initial(
            userProfileModel: userProfileModel,
            teamdata: teamdata,
            ongoingShiftModel: ongoingShiftModel,
            companyProfileModel: companyProfileModel,
            index: index)) {
    _startSocket();
  }
  //test
  DashboardRepo repo = DashboardRepo();
  final String authToken;
  late Socket socket;
  AutoScrollController controller = AutoScrollController();
  Future<void> _startSocket() async {
    final String currentTimeZone = await FlutterTimezone.getLocalTimezone();
    socket = io(
        ApiContants.baseUrl,
        OptionBuilder()
            .setTransports(['websocket']) // for Flutter or Dart VM
            .disableAutoConnect() // disable auto-connection
            .setExtraHeaders({
              'authorization': 'Bearer $authToken',
              'timezone': currentTimeZone
            }) // optional
            .build());

    try {
      socket.connect();
      socket.onConnect((data) {
        emit(state.copyWith(socketStatus: SocketStatus.connected));
        checkEarlyTimerStart(state.selectedIndex);
      });

      socket.onDisconnect((_) {
        emit(state.copyWith(socketStatus: SocketStatus.disconnected));
      });

      socket.on("SHIFT_HAS_STARTED", (data) async {
        Shift ongoingShift = Shift.fromJson(data['ongoingShift']);
        int index = state.companyProfileModel.projects!
            .indexWhere((element) => element.id == ongoingShift.projectId);
        emit(state.copyWith(
            ongoingShiftModel: OngoingShiftModel(ongoingShift: ongoingShift),
            selectedIndex: index));

        await checkEarlyTimerStart(index);
        emit(state.copyWith(status: DashboardStatus.loaded));
      });

      socket.on("SHIFT_HAS_ENDED", (_) => forceStopTimer());

      socket.onReconnect((_) {
        emit(state.copyWith(socketStatus: SocketStatus.reconnecting));
      });

      socket.onError((_) {
        emit(state.copyWith(socketStatus: SocketStatus.error));
      });
    } catch (e) {
      emit(state.copyWith(socketStatus: SocketStatus.error));
    }
  }

  void changeSelectedIndex(int index) {
    print('tapped');
    emit(state.copyWith(selectedIndex: index));
  }

  void toogleStart(bool val) {
    emit(state.copyWith(started: val));
  }

  Timer? _timer;

  void startTaskTimer() async {
    // _timer?.cancel();
    // int second;
    // StartShiftModel data;
    // data =
    emit(state.copyWith(status: DashboardStatus.loading));
    await repo.startShift(
        state.userProfileModel.selectedCompany?.companyId ?? 0,
        state.companyProfileModel.projects?[state.selectedIndex].id ?? 0,
        authToken);
    // emit(state.copyWith(startShiftModel: data));
    // second = findTimeForStarted(state.startShiftModel.start_time.toString());
    // _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
    //   second++;
    //   emit(state.copyWith(durationInSeconds: second));
    //   toogleStart(true);
    // });
  }

  Future<void> checkEarlyTimerStart(int index) async {
    if (state.ongoingShiftModel.ongoingShift != null) {
      toogleStart(true);
      controller.scrollToIndex(index, preferPosition: AutoScrollPosition.begin);
      _timer?.cancel();

      int second;
      second = findTimeForStarted(
          state.ongoingShiftModel.ongoingShift?.start_time.toString() ?? "");
      _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
        second++;
        emit(state.copyWith(durationInSeconds: second));
      });
    }
  }

  int findTimeForStarted(String? startedTime) {
    // Log the input to debug
    print('Started time input: $startedTime');

    if (startedTime == null || startedTime.isEmpty) {
      print('Error: startedTime is null or empty');
      return -1; // Handle null or empty string appropriately.
    }

    try {
      // Assuming the input should be ISO 8601 format:
      DateTime startTime = DateTime.parse(startedTime);
      DateTime currentTime = DateTime.now();
      Duration difference = currentTime.difference(startTime);
      int seconds = difference.inSeconds;
      return seconds;
    } catch (e) {
      return -1; // Handle parsing error appropriately.
    }
  }

  void stopTimer(String note, BuildContext context) async {
    await repo.stopShift(note, authToken);
    // ignore: use_build_context_synchronously
    Navigator.pop(context);
  }

  Future<void> resetTimer() async {
    emit(state.copyWith(durationInSeconds: 0));
  }

  Future<void> forceStopTimer() async {
    emit(state.copyWith(status: DashboardStatus.loading));
    _timer?.cancel();
    try {
      await refetchDetailsData();
      resetTimer();
      toogleStart(false);
      emit(state.copyWith(status: DashboardStatus.loaded));
    } catch (e) {
      emit(state.copyWith(
          status: DashboardStatus.error, errormsg: e.toString()));
    }
  }

  Future<void> refetchDetailsData() async {
    UserProfileModel data = await repo.getDashboardData(authToken);

    List<TeamActivityModel> teamdata = await repo.getTeamActivity(
        authToken, data.selectedCompany?.companyId ?? 0);
    OngoingShiftModel ongoingShiftData = await repo.getOngoingShift(
        authToken, data.selectedCompany?.companyId ?? 0);
    CompanyProfileModel companyData = await repo.getCompanyProfile(
        authToken, data.selectedCompany?.companyId ?? 0);

    emit(state.copyWith(
      userProfileModel: data,
      teamActivityModel: teamdata,
      ongoingShiftModel: ongoingShiftData,
      companyProfileModel: companyData,
    ));
  }

  Future<void> delete(int shiftId) async {
    await repo.deleteShift(shiftId, authToken);
    forceStopTimer();
  }

  String returnUserProjectFromProjectID(int companyId) {
    return (state.companyProfileModel.projects ?? [])
            .firstWhere((element) => element.id == companyId)
            .name ??
        "";
  }
}
