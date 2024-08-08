// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'manual_shift_date_picker_cubit.dart';

enum Status { initial, loaded, loading, error }

class ManualShiftDatePickerState {
  final DateTime manualShiftStartDate;
  final DateTime manualShiftEndDate;
  final DateTime calculatrHoursStartDate;
  final DateTime calculatrHoursEndDate;
  final TimeOfDay manualShiftStartTime;
  final Status status;
  final String error;
  final TimeOfDay manualShiftEndTime;
  ManualShiftDatePickerState({
    required this.manualShiftStartTime,
    required this.manualShiftEndTime,
    required this.manualShiftStartDate,
    required this.manualShiftEndDate,
    required this.calculatrHoursStartDate,
    required this.calculatrHoursEndDate,
    required this.status,
    required this.error,
  });
  List<Object?> get props => [
        manualShiftEndDate,
        manualShiftStartDate,
        calculatrHoursEndDate,
        calculatrHoursStartDate,
        manualShiftStartTime,
        manualShiftEndTime,
        status,
        error,
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
      status: Status.initial,
      error: '',
    );
  }
  ManualShiftDatePickerState copyWith({
    DateTime? manualShiftStartDate,
    DateTime? manualShiftEndDate,
    DateTime? calculatrHoursStartDate,
    DateTime? calculatrHoursEndDate,
    TimeOfDay? manualShiftStartTime,
    TimeOfDay? manualShiftEndTime,
    Status? status,
    String? error,
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
        status: status ?? this.status,
        error: error ?? this.error);
  }
}
