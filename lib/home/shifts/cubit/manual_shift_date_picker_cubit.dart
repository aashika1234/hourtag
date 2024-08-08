import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hourtag/home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';
import 'package:hourtag/home/shifts/repo/manual_shift_repo.dart';

part 'manual_shift_date_picker_state.dart';

class ManualShiftDatePickerCubit extends Cubit<ManualShiftDatePickerState> {
  final String authToken;
  final int companyID;
  final Shift? shift;
  ManualShiftDatePickerCubit(
      {required this.authToken, required this.companyID, this.shift})
      : super(ManualShiftDatePickerState.initial()) {
    if (shift != null) {
      emit(state.copyWith(
          manualShiftStartDate: shift!.start_time,
          manualShiftEndDate: shift!.end_time,
          manualShiftStartTime: TimeOfDay.fromDateTime(shift!.start_time!),
          manualShiftEndTime: TimeOfDay.fromDateTime(shift!.end_time!)));
    }
  }
  ManualShiftRepo repo = ManualShiftRepo();
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

  void addShiftRequest({required String note, required int projectId}) async {
    try {
      emit(state.copyWith(status: Status.loading));
      String status = await repo.shiftChangeRequest(
          purpose: shift != null ? "EDITING" : "MANUAL",
          companyID: companyID, 
          startTime: state.manualShiftStartDate.copyWith(
              hour: state.manualShiftStartTime.hour,
              minute: state.manualShiftStartTime.minute),
          endTime: state.manualShiftEndDate.copyWith(
              hour: state.manualShiftEndTime.hour,
              minute: state.manualShiftEndTime.minute),
          authToken: authToken,
          projectId: projectId,
          shiftNote: note,
          shiftChangeRequestNote: "/");
      emit(state.copyWith(status: Status.loaded, error: status));
    } on Exception catch (e) {
      emit(state.copyWith(status: Status.error, error: e.toString()));
    }
  }

  void neutralizeError() {
    emit(state.copyWith(error: "", status: Status.initial));
  }
}
