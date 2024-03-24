// To parse this JSON data, do
//
//     final startShiftModel = startShiftModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'start_shift_model.freezed.dart';
part 'start_shift_model.g.dart';

StartShiftModel startShiftModelFromJson(String str) =>
    StartShiftModel.fromJson(json.decode(str));

String startShiftModelToJson(StartShiftModel data) =>
    json.encode(data.toJson());

@freezed
class StartShiftModel with _$StartShiftModel {
  const factory StartShiftModel({
    TotalShiftTime? total_shift_time,
    String? note,
    int? userId,
    int? companyId,
    int? projectId,
    String? shiftTimezone,
    int? id,
    DateTime? created_at,
    dynamic updated_at,
    dynamic deleted_at,
    DateTime? start_time,
    bool? forceStopped,
  }) = _StartShiftModel;

  factory StartShiftModel.fromJson(Map<String, dynamic> json) =>
      _$StartShiftModelFromJson(json);
}

@freezed
class TotalShiftTime with _$TotalShiftTime {
  const factory TotalShiftTime({
    dynamic hours,
    dynamic minutes,
    dynamic seconds,
  }) = _TotalShiftTime;

  factory TotalShiftTime.fromJson(Map<String, dynamic> json) =>
      _$TotalShiftTimeFromJson(json);
}
