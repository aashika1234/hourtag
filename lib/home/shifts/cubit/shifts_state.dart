// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'shifts_cubit.dart';

enum ShiftsStateStatus { loading, loaded, error }

class ShiftsState {
  final int selectedIndex;
  final ShiftActivityModel? shiftActivityModel;
  final String authToken;
  final PastShiftModel pastShiftModel;
  final ShiftsStateStatus status;
  ShiftsState({
    required this.selectedIndex,
    required this.shiftActivityModel,
    required this.authToken,
    required this.pastShiftModel,
    required this.status,
  });
  List<Object?> get props =>
      [selectedIndex, shiftActivityModel, authToken, status];
  factory ShiftsState.initial({required String authToken}) {
    return ShiftsState(
        status: ShiftsStateStatus.loading,
        selectedIndex: 0,
        shiftActivityModel: const ShiftActivityModel(),
        authToken: authToken,
        pastShiftModel: const PastShiftModel());
  }
  ShiftsState copyWith(
      {int? selectedIndex,
      ShiftsStateStatus? status,
      ShiftActivityModel? shiftActivityModel,
      String? authToken,
      PastShiftModel? pastShiftModel}) {
    return ShiftsState(
        status: status ?? this.status,
        selectedIndex: selectedIndex ?? this.selectedIndex,
        shiftActivityModel: shiftActivityModel ?? this.shiftActivityModel,
        authToken: authToken ?? this.authToken,
        pastShiftModel: pastShiftModel ?? this.pastShiftModel);
  }
}
