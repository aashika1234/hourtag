// To parse this JSON data, do
//
//     final ongoingShiftModel = ongoingShiftModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ongoing_shift_model.freezed.dart';
part 'ongoing_shift_model.g.dart';

OngoingShiftModel ongoingShiftModelFromJson(String str) =>
    OngoingShiftModel.fromJson(json.decode(str));

String ongoingShiftModelToJson(OngoingShiftModel data) =>
    json.encode(data.toJson());

@freezed
class OngoingShiftModel with _$OngoingShiftModel {
  const factory OngoingShiftModel({
    TotalShift? totalShifts,
    List<Shift>? todaysShifts,
    Shift? ongoingShift,
  }) = _OngoingShiftModel;

  factory OngoingShiftModel.fromJson(Map<String, dynamic> json) =>
      _$OngoingShiftModelFromJson(json);
}

@freezed
class Shift with _$Shift {
  const factory Shift({
    TotalShift? total_shift_time,
    int? id,
    DateTime? created_at,
    DateTime? updated_at,
    dynamic deleted_at,
    String? note,
    DateTime? start_time,
    DateTime? end_time,
    int? userId,
    int? companyId,
    int? projectId,
    String? shiftTimezone,
    bool? forceStopped,
    String? shiftStatus,
    Project? project,
  }) = _Shift;

  factory Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);
}

@freezed
class Project with _$Project {
  const factory Project({
    int? id,
    DateTime? created_at,
    dynamic updated_at,
    dynamic deleted_at,
    String? name,
    dynamic description,
    String? colorCode,
    int? createdByUserId,
    int? companyId,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}

@freezed
class TotalShift with _$TotalShift {
  const factory TotalShift({
    int? hours,
    int? minutes,
    int? seconds,
  }) = _TotalShift;

  factory TotalShift.fromJson(Map<String, dynamic> json) =>
      _$TotalShiftFromJson(json);
}
