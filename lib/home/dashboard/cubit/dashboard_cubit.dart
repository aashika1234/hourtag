import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:hourtag/const/api_const.dart';
import 'package:hourtag/cubit/cubit/auth_cubit.dart';
import 'package:hourtag/home/dashboard/model/company_profile/company_profile_model.dart';
import 'package:hourtag/home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';
import 'package:hourtag/home/dashboard/model/start_shift/start_shift_model.dart';
import 'package:hourtag/home/dashboard/model/team_activity/team_activity_model.dart';
import 'package:hourtag/home/dashboard/model/user_profile/user_profile_model.dart';
import 'package:hourtag/home/dashboard/model/weekly_shift/weekly_shift_model.dart';
import 'package:hourtag/home/dashboard/repo/dashboard_repo.dart';
import 'package:hourtag/util/functions.dart';
import 'package:logger/logger.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:socket_io_client/socket_io_client.dart' as ioc;

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final AuthCubit authCubit;
  DashboardCubit(
      {required this.authCubit,
      required List<TeamActivityModel> teamdata,
      required WeeklyShiftModel weeklyShiftModel,
      required OngoingShiftModel ongoingShiftModel,
      required CompanyProfileModel companyProfileModel,
      required int index})
      : super(DashboardState.initial(
            teamdata: teamdata,
            ongoingShiftModel: ongoingShiftModel,
            companyProfileModel: companyProfileModel,
            weeklyShiftModel: weeklyShiftModel,
            index: index));

  //getter for company id
  int get companyId =>
      authCubit.state.userProfileModel?.selectedCompany?.companyId ?? -1;

  String get authToken => authCubit.state.authToken;
  //test
  DashboardRepo repo = DashboardRepo();
  late Socket? socket;
  AutoScrollController controller = AutoScrollController();
  Future<void> startSocket() async {
    final String currentTimeZone = await FlutterTimezone.getLocalTimezone();
    socket = io(
        ApiContants.baseUrl,
        OptionBuilder()
            .setTransports(['websocket']) // for Flutter or Dart VM

            .setExtraHeaders({
              'authorization': 'Bearer $authToken',
              'timezone': currentTimeZone
            })
            .disableAutoConnect()
            .enableReconnection()
            .enableForceNew()
            .build());

    try {
      socket!.connect();
      socket!.onConnect((data) {
        emit(state.copyWith(socketStatus: SocketStatus.connected));
        checkEarlyTimerStart(state.selectedIndex);
      });

      socket!.onDisconnect((e) {
        emit(state.copyWith(socketStatus: SocketStatus.disconnected));
      });

      socket!.on("SHIFT_HAS_STARTED", (data) async {
        print('SHIFT HAS STARTED');
        Shift ongoingShift = Shift.fromJson(data['ongoingShift']);
        int index = state.companyProfileModel.projects!
            .indexWhere((element) => element.id == ongoingShift.projectId);
        emit(state.copyWith(
            ongoingShiftModel: OngoingShiftModel(ongoingShift: ongoingShift),
            selectedIndex: index));

        await checkEarlyTimerStart(index);
        emit(state.copyWith(status: DashboardStatus.loaded));
      });

      socket!.on("SHIFT_HAS_ENDED", (_) {
        forceStopTimer();
      });

      socket!.onReconnect((e) {
        emit(state.copyWith(socketStatus: SocketStatus.reconnecting));
      });

      socket!.onError((e) {
        emit(state.copyWith(socketStatus: SocketStatus.error));
      });
    } catch (e) {
      emit(state.copyWith(socketStatus: SocketStatus.error));
    }
  }

  void changeSelectedIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }

  void toogleStart(bool val) {
    emit(state.copyWith(started: val));
  }

  Timer? _timer;

  void startTaskTimer({required BuildContext context}) async {
    // _timer?.cancel();
    // int second;
    // StartShiftModel data;
    // data =
    emit(state.copyWith(status: DashboardStatus.loading));
    try {
      Logger().d(authCubit.state.userProfileModel?.selectedCompany?.toJson());
      await repo.startShift(
          companyId,
          state.companyProfileModel.projects?[state.selectedIndex].id ?? 0,
          authToken);
      emit(state.copyWith(status: DashboardStatus.error));
    } catch (e) {
      Func.showSnacksBar(
          context: context,
          message: e.toString(),
          status: SnacksBarStatus.error);
      emit(state.copyWith(status: DashboardStatus.error));
    }
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
    if (startedTime == null || startedTime.isEmpty) {
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
    try {
      await repo.stopShift(note, authToken);
    } catch (e) {
      Func.showSnacksBar(
          // ignore: use_build_context_synchronously
          context: context,
          message: e.toString(),
          status: SnacksBarStatus.error);
    }
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
    WeeklyShiftModel weeklyShiftModel = await repo.getWeeklyShift(
        authToken, data.selectedCompany?.companyId ?? 0);

    emit(state.copyWith(
      teamActivityModel: teamdata,
      weeklyShiftModel: weeklyShiftModel,
      ongoingShiftModel: ongoingShiftData,
      companyProfileModel: companyData,
    ));
    authCubit.updateUserProfileModel(data);
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

  void destorySocket() {
    socket!.dispose();
    socket = null;
    ioc.cache.clear();
  }
}
