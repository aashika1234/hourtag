import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'manual_shift_date_picker_state.dart';

class ManualShiftDatePickerCubit extends Cubit<ManualShiftDatePickerState> {
  ManualShiftDatePickerCubit() : super(ManualShiftDatePickerState.initial());
  void changeManualShiftStartDate(DateTime date) {
    emit(state.copyWith(manualShiftStartDate: date));
  }

  void changeManualShiftEndDate(DateTime date) {
    emit(state.copyWith(manualShiftEndDate: date));
  }

  void changeCalculatrHoursStartDate(DateTime date) {
    emit(state.copyWith(calculatrHoursStartDate: date));
  }

  void changeCalculatrHoursEndDate(DateTime date) {
    emit(state.copyWith(calculatrHoursEndDate: date));
  }

  void changeManualShiftStartTime(TimeOfDay time) {
    emit(state.copyWith(manualShiftStartTime: time));
  }

  void changeManualShiftEndTime(TimeOfDay time) {
    emit(state.copyWith(manualShiftEndTime: time));
  }
}
