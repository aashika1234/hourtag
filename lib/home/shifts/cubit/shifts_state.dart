// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'shifts_cubit.dart';

class ShiftsState {
  final int selectedIndex;
  final ShiftActivityModel? shiftActivityModel;
  final String authToken;
  final PastShiftModel pastShiftModel;
  ShiftsState(
      {required this.selectedIndex,
      required this.shiftActivityModel,
      required this.authToken,
      required this.pastShiftModel});
  List<Object?> get props => [selectedIndex, shiftActivityModel, authToken];
  factory ShiftsState.initial({required String authToken}) {
    return ShiftsState(
        selectedIndex: 0,
        shiftActivityModel: const ShiftActivityModel(),
        authToken: authToken,
        pastShiftModel: const PastShiftModel());
  }
  ShiftsState copyWith(
      {int? selectedIndex,
      ShiftActivityModel? shiftActivityModel,
      String? authToken,
      PastShiftModel? pastShiftModel}) {
    return ShiftsState(
        selectedIndex: selectedIndex ?? this.selectedIndex,
        shiftActivityModel: shiftActivityModel ?? this.shiftActivityModel,
        authToken: authToken ?? this.authToken,
        pastShiftModel: pastShiftModel ?? this.pastShiftModel);
  }
}
