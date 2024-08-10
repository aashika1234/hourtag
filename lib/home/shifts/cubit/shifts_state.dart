// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'shifts_cubit.dart';

enum ShiftsStateStatus { loading, loaded, error }

enum CustomShiftFetchStatus { loading, loaded, error }

class ShiftsState {
  final int selectedIndex;
  final ShiftActivityModel? shiftActivityModel;
  final String authToken;
  final PastShiftModel pastShiftModel;
  final ShiftsStateStatus status;
  final DateTime pastShiftStartDate;
  final DateTime pastShiftEndDate;
  final CustomShiftFetchStatus customShiftFetchStatus;
  final PastShiftModel customPastShiftModel;
  ShiftsState({
    required this.selectedIndex,
    required this.shiftActivityModel,
    required this.authToken,
    required this.pastShiftModel,
    required this.status,
    required this.pastShiftStartDate,
    required this.pastShiftEndDate,
    required this.customShiftFetchStatus,
    required this.customPastShiftModel,
  });
  List<Object?> get props => [
        selectedIndex,
        shiftActivityModel,
        authToken,
        status,
        pastShiftEndDate,
        pastShiftStartDate,
        pastShiftModel,
        customPastShiftModel,
        customShiftFetchStatus
      ];
  factory ShiftsState.initial({required String authToken}) {
    return ShiftsState(
        status: ShiftsStateStatus.loading,
        selectedIndex: 0,
        shiftActivityModel: const ShiftActivityModel(),
        authToken: authToken,
        pastShiftEndDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day),
        pastShiftStartDate: DateTime(
                DateTime.now().year, DateTime.now().month, DateTime.now().day)
            .subtract(const Duration(days: 7)),
        pastShiftModel: const PastShiftModel(),
        customShiftFetchStatus: CustomShiftFetchStatus.loading,
        customPastShiftModel: const PastShiftModel());
  }

  ShiftsState copyWith(
      {int? selectedIndex,
      DateTime? pastShiftStartDate,
      DateTime? pastShiftEndDate,
      ShiftsStateStatus? status,
      ShiftActivityModel? shiftActivityModel,
      String? authToken,
      PastShiftModel? pastShiftModel,
      CustomShiftFetchStatus? customShiftFetchStatus,
      PastShiftModel? customPastShiftModel}) {
    return ShiftsState(
      status: status ?? this.status,
      pastShiftStartDate: pastShiftStartDate ?? this.pastShiftStartDate,
      pastShiftEndDate: pastShiftEndDate ?? this.pastShiftEndDate,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      shiftActivityModel: shiftActivityModel ?? this.shiftActivityModel,
      authToken: authToken ?? this.authToken,
      pastShiftModel: pastShiftModel ?? this.pastShiftModel,
      customShiftFetchStatus:
          customShiftFetchStatus ?? this.customShiftFetchStatus,
      customPastShiftModel: customPastShiftModel ?? this.customPastShiftModel,
    );
  }
}
