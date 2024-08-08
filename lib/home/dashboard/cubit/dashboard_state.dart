// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'dashboard_cubit.dart';

enum DashboardStatus { loading, loaded, error }

enum SocketStatus { initial, connected, disconnected, error, reconnecting }

class DashboardState {
  final int durationInSeconds;
  final int selectedIndex;
  final SocketStatus socketStatus;
  final bool started;
  final DashboardStatus status;
  final UserProfileModel userProfileModel;
  final List<TeamActivityModel> teamActivityModel;
  final WeeklyShiftModel weeklyShiftModel;
  final CompanyProfileModel companyProfileModel;
  final StartShiftModel startShiftModel;
  final OngoingShiftModel ongoingShiftModel;
  final String errormsg;
  const DashboardState(
      {required this.selectedIndex,
      required this.durationInSeconds,
      required this.socketStatus,
      required this.weeklyShiftModel,
      required this.started,
      required this.status,
      required this.userProfileModel,
      required this.teamActivityModel,
      required this.companyProfileModel,
      required this.startShiftModel,
      required this.errormsg,
      required this.ongoingShiftModel});

  List<Object?> get props => [
        durationInSeconds,
        selectedIndex,
        started,
        userProfileModel,
        status,
        socketStatus,
        teamActivityModel,
        errormsg,
        companyProfileModel,
        startShiftModel,
        ongoingShiftModel,
        weeklyShiftModel
      ];
  factory DashboardState.initial(
      {required UserProfileModel userProfileModel,
      required List<TeamActivityModel> teamdata,
      required OngoingShiftModel ongoingShiftModel,
      required CompanyProfileModel companyProfileModel,
      required WeeklyShiftModel weeklyShiftModel,
      required int index}) {
    return DashboardState(
        durationInSeconds: 0,
        status: DashboardStatus.loaded,
        socketStatus: SocketStatus.initial,
        selectedIndex: index,
        started: false,
        errormsg: "",
        userProfileModel: userProfileModel,
        teamActivityModel: teamdata,
        companyProfileModel: companyProfileModel,
        startShiftModel: const StartShiftModel(),
        weeklyShiftModel: weeklyShiftModel,
        ongoingShiftModel: ongoingShiftModel);
  }

  DashboardState copyWith(
      {int? durationInSeconds,
      int? selectedIndex,
      bool? started,
      DashboardStatus? status,
      SocketStatus? socketStatus,
      UserProfileModel? userProfileModel,
      List<TeamActivityModel>? teamActivityModel,
      String? errormsg,
      CompanyProfileModel? companyProfileModel,
      StartShiftModel? startShiftModel,
      WeeklyShiftModel? weeklyShiftModel,
      OngoingShiftModel? ongoingShiftModel}) {
    return DashboardState(
        durationInSeconds: durationInSeconds ?? this.durationInSeconds,
        status: status ?? this.status,
        socketStatus: socketStatus ?? this.socketStatus,
        selectedIndex: selectedIndex ?? this.selectedIndex,
        started: started ?? this.started,
        errormsg: errormsg ?? this.errormsg,
        userProfileModel: userProfileModel ?? this.userProfileModel,
        teamActivityModel: teamActivityModel ?? this.teamActivityModel,
        companyProfileModel: companyProfileModel ?? this.companyProfileModel,
        startShiftModel: startShiftModel ?? this.startShiftModel,
        ongoingShiftModel: ongoingShiftModel ?? this.ongoingShiftModel,
        weeklyShiftModel: weeklyShiftModel ?? this.weeklyShiftModel);
  }
}
