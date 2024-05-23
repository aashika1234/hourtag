// To parse this JSON data, do
//
//     final shiftActivityModel = shiftActivityModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'shift_activity_model.freezed.dart';
part 'shift_activity_model.g.dart';

ShiftActivityModel shiftActivityModelFromJson(String str) => ShiftActivityModel.fromJson(json.decode(str));

String shiftActivityModelToJson(ShiftActivityModel data) => json.encode(data.toJson());

@freezed
class ShiftActivityModel with _$ShiftActivityModel {
    const factory ShiftActivityModel({
        ThisMonth? today,
        ThisMonth? thisWeek,
        ThisMonth? thisMonth,
        int? percentage,
        String? targetedWorkingHoursType,
    }) = _ShiftActivityModel;

    factory ShiftActivityModel.fromJson(Map<String, dynamic> json) => _$ShiftActivityModelFromJson(json);
}

@freezed
class ThisMonth with _$ThisMonth {
    const factory ThisMonth({
        int? hours,
        int? minutes,
        int? seconds,
    }) = _ThisMonth;

    factory ThisMonth.fromJson(Map<String, dynamic> json) => _$ThisMonthFromJson(json);
}
