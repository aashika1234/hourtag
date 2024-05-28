// To parse this JSON data, do
//
//     final weeklyShiftModel = weeklyShiftModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../ongoing_shifts/ongoing_shift_model.dart';

part 'weekly_shift_model.freezed.dart';
part 'weekly_shift_model.g.dart';

WeeklyShiftModel weeklyShiftModelFromJson(String str) =>
    WeeklyShiftModel.fromJson(json.decode(str));

String weeklyShiftModelToJson(WeeklyShiftModel data) =>
    json.encode(data.toJson());

@freezed
class WeeklyShiftModel with _$WeeklyShiftModel {
  const factory WeeklyShiftModel({
    WeeklyShiftSummary? weeklyShiftSummary,
    TodaysShifts? todaysShifts,
    GlobalShiftTime? globalShiftTime,
    List<TodaysShifts>? shiftResponse,
  }) = _WeeklyShiftModel;

  factory WeeklyShiftModel.fromJson(Map<String, dynamic> json) =>
      _$WeeklyShiftModelFromJson(json);
}

@freezed
class GlobalShiftTime with _$GlobalShiftTime {
  const factory GlobalShiftTime({
    int? hours,
    int? minutes,
    int? seconds,
  }) = _GlobalShiftTime;

  factory GlobalShiftTime.fromJson(Map<String, dynamic> json) =>
      _$GlobalShiftTimeFromJson(json);
}

@freezed
class TodaysShifts with _$TodaysShifts {
  const factory TodaysShifts({
    String? day,
    GlobalShiftTime? totalShiftTime,
    List<Shift>? shifts,
  }) = _TodaysShifts;

  factory TodaysShifts.fromJson(Map<String, dynamic> json) =>
      _$TodaysShiftsFromJson(json);
}

@freezed
class Project with _$Project {
  const factory Project({
    int? id,
    String? name,
    String? colorCode,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}

@freezed
class WeeklyShiftSummary with _$WeeklyShiftSummary {
  const factory WeeklyShiftSummary({
    String? weekStart,
    String? weekEnd,
    int? totalTargetHours,
    double? totalHoursWorked,
    AverageWorkingHoursPerDay? averageWorkingHoursPerDay,
    int? percentage,
    int? hoursWorkedOvertime,
    GlobalShiftTime? totalHoursWorkedInHoursMinutes,
  }) = _WeeklyShiftSummary;

  factory WeeklyShiftSummary.fromJson(Map<String, dynamic> json) =>
      _$WeeklyShiftSummaryFromJson(json);
}

@freezed
class AverageWorkingHoursPerDay with _$AverageWorkingHoursPerDay {
  const factory AverageWorkingHoursPerDay({
    int? hours,
    int? minutes,
  }) = _AverageWorkingHoursPerDay;

  factory AverageWorkingHoursPerDay.fromJson(Map<String, dynamic> json) =>
      _$AverageWorkingHoursPerDayFromJson(json);
}
