import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hourtag/home/dashboard/model/company_profile/company_profile_model.dart';
import 'package:hourtag/home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';
import 'package:hourtag/home/dashboard/model/start_shift/start_shift_model.dart';
import 'package:hourtag/home/dashboard/model/team_activity/team_activity_model.dart';
import 'package:hourtag/home/dashboard/model/user_profile/user_profile_model.dart';
import 'package:hourtag/home/dashboard/repo/dashboard_repo.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(this.authToken) : super(DashboardState.initial());
  DashboardRepo repo = DashboardRepo();
  final String authToken;
  void changeSelectedIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }

  void toogleStart(bool val) {
    emit(state.copyWith(started: val));
  }

  Timer? _timer;
  void startTimer(bool val) async {
    _timer?.cancel();
    if (state.ongoingShiftModel.ongoingShift == null) {
      val = true;
    }
    int second;

    StartShiftModel data;
    if (state.ongoingShiftModel.ongoingShift == null && !val) {
      data = await repo.startShift(
          state.userProfileModel.selectedCompany?.companyId ?? 0,
          state.companyProfileModel.projects?[state.selectedIndex].id ?? 0,
          authToken);
      emit(state.copyWith(startShiftModel: data));
      second = findTimeForStarted(state.startShiftModel.start_time.toString());
      _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
        second++;

        toogleStart(true);
      });
    } else if (state.ongoingShiftModel.ongoingShift != null) {
      emit(state.copyWith(status: Status.loading));
      second = findTimeForStarted(
          state.ongoingShiftModel.ongoingShift?.start_time.toString() ?? "");
      _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
        second++;
        emit(state.copyWith(durationInSeconds: second, status: Status.loaded));
        toogleStart(true);
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
      // Try parsing with an explicit format if you know the format in advance.
      // For example, if your date is in "yyyy-MM-dd" format:
      // DateTime startTime = DateFormat('yyyy-MM-dd').parse(startedTime);

      // Assuming the input should be ISO 8601 format:
      DateTime startTime = DateTime.parse(startedTime);
      DateTime currentTime = DateTime.now();
      Duration difference = currentTime.difference(startTime);
      int seconds = difference.inSeconds;
      return seconds;
    } catch (e) {
      print('Error parsing date: $e');
      return -1; // Handle parsing error appropriately.
    }
  }

  void stopTimer(String note) async {
    _timer?.cancel();
    await repo.stopShift(note, authToken);
    toogleStart(false);
  }

  Future<void> resetTimer() async {
    emit(state.copyWith(durationInSeconds: 0));
  }

  Future<void> getUserProfile() async {
    print(state.status);
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
      companyProfileModel: companyData,
      ongoingShiftModel: ongoingShiftData,
    ));
    emit(state.copyWith(status: Status.loaded));
    print(state.status);
    startTimer(false);
  }
}
