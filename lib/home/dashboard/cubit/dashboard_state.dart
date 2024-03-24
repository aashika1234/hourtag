// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'dashboard_cubit.dart';

enum Status { loading, loaded }

class DashboardState {
  final int durationInSeconds;
  final int selectedIndex;
  final bool started;
  final Status status;
  final UserProfileModel userProfileModel;
  final List<TeamActivityModel> teamActivityModel;
  final CompanyProfileModel companyProfileModel;
  final StartShiftModel startShiftModel;
  final OngoingShiftModel ongoingShiftModel;
  const DashboardState(
      {required this.selectedIndex,
      required this.durationInSeconds,
      required this.started,
      required this.userProfileModel,
      required this.teamActivityModel,
      required this.status,
      required this.companyProfileModel,
      required this.startShiftModel,
      required this.ongoingShiftModel});

  List<Object?> get props => [
        durationInSeconds,
        selectedIndex,
        started,
        userProfileModel,
        teamActivityModel,
        status,
        companyProfileModel,
        startShiftModel,
        ongoingShiftModel
      ];
  factory DashboardState.initial() {
    return const DashboardState(
        durationInSeconds: 0,
        selectedIndex: 0,
        started: false,
        userProfileModel: UserProfileModel(),
        teamActivityModel: [],
        status: Status.loading,
        companyProfileModel: CompanyProfileModel(),
        startShiftModel: StartShiftModel(),
        ongoingShiftModel: OngoingShiftModel());
  }

  DashboardState copyWith(
      {int? durationInSeconds,
      int? selectedIndex,
      bool? started,
      UserProfileModel? userProfileModel,
      List<TeamActivityModel>? teamActivityModel,
      Status? status,
      CompanyProfileModel? companyProfileModel,
      StartShiftModel? startShiftModel,
      OngoingShiftModel? ongoingShiftModel}) {
    return DashboardState(
        durationInSeconds: durationInSeconds ?? this.durationInSeconds,
        selectedIndex: selectedIndex ?? this.selectedIndex,
        started: started ?? this.started,
        userProfileModel: userProfileModel ?? this.userProfileModel,
        teamActivityModel: teamActivityModel ?? this.teamActivityModel,
        status: status ?? this.status,
        companyProfileModel: companyProfileModel ?? this.companyProfileModel,
        startShiftModel: startShiftModel ?? this.startShiftModel,
        ongoingShiftModel: ongoingShiftModel ?? this.ongoingShiftModel);
  }
}
