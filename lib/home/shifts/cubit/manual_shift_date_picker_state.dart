// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'manual_shift_date_picker_cubit.dart';

class ManualShiftDatePickerState {
  final DateTime manualShiftStartDate;
  final DateTime manualShiftEndDate;
  final DateTime calculatrHoursStartDate;
  final DateTime calculatrHoursEndDate;
  final TimeOfDay manualShiftStartTime;
  final TimeOfDay manualShiftEndTime;
  ManualShiftDatePickerState({
    required this.manualShiftStartTime,
    required this.manualShiftEndTime,
    required this.manualShiftStartDate,
    required this.manualShiftEndDate,
    required this.calculatrHoursStartDate,
    required this.calculatrHoursEndDate,
  });
  List<Object?> get props => [
        manualShiftEndDate,
        manualShiftStartDate,
        calculatrHoursEndDate,
        calculatrHoursStartDate,
        manualShiftStartTime,
        manualShiftEndTime,
      ];
  factory ManualShiftDatePickerState.initial() {
    return ManualShiftDatePickerState(
      manualShiftEndTime: TimeOfDay.now(),
      manualShiftStartTime: TimeOfDay.now(),
      manualShiftStartDate: DateTime.now(),
      manualShiftEndDate: DateTime.now(),
      calculatrHoursStartDate:
          DateTime.utc(DateTime.now().year, DateTime.now().month, 1),
      calculatrHoursEndDate: DateTime.now(),
    );
  }
  ManualShiftDatePickerState copyWith({
    DateTime? manualShiftStartDate,
    DateTime? manualShiftEndDate,
    DateTime? calculatrHoursStartDate,
    DateTime? calculatrHoursEndDate,
    TimeOfDay? manualShiftStartTime,
    TimeOfDay? manualShiftEndTime,
  }) {
    return ManualShiftDatePickerState(
      manualShiftStartDate: manualShiftStartDate ?? this.manualShiftStartDate,
      manualShiftEndDate: manualShiftEndDate ?? this.manualShiftEndDate,
      calculatrHoursStartDate:
          calculatrHoursStartDate ?? this.calculatrHoursStartDate,
      calculatrHoursEndDate:
          calculatrHoursEndDate ?? this.calculatrHoursEndDate,
      manualShiftStartTime: manualShiftStartTime ?? this.manualShiftStartTime,
      manualShiftEndTime: manualShiftEndTime ?? this.manualShiftEndTime,
    );
  }
}
