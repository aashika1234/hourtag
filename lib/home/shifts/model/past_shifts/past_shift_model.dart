// To parse this JSON data, do
//
//     final pastShiftModel = pastShiftModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'past_shift_model.freezed.dart';
part 'past_shift_model.g.dart';

PastShiftModel pastShiftModelFromJson(String str) =>
    PastShiftModel.fromJson(json.decode(str));

String pastShiftModelToJson(PastShiftModel data) => json.encode(data.toJson());

@freezed
class PastShiftModel with _$PastShiftModel {
  const factory PastShiftModel({
    Time? globalShiftTime,
    List<Project>? projects,
    List<ShiftsByWeek>? shiftsByWeek,
    PastShiftModelUser? user,
  }) = _PastShiftModel;

  factory PastShiftModel.fromJson(Map<String, dynamic> json) =>
      _$PastShiftModelFromJson(json);
}

@freezed
class Time with _$Time {
  const factory Time({
    int? hours,
    int? minutes,
    int? seconds,
  }) = _Time;

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);
}

@freezed
class Project with _$Project {
  const factory Project({
    int? id,
    String? name,
    String? colorCode,
    Time? totalShiftTime,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}

@freezed
class ShiftsByWeek with _$ShiftsByWeek {
  const factory ShiftsByWeek({
    DateTime? weekStart,
    DateTime? weekEnd,
    List<ShiftsByDay>? shiftsByDay,
    Time? totalWeekTime,
  }) = _ShiftsByWeek;

  factory ShiftsByWeek.fromJson(Map<String, dynamic> json) =>
      _$ShiftsByWeekFromJson(json);
}

@freezed
class ShiftsByDay with _$ShiftsByDay {
  const factory ShiftsByDay({
    DateTime? dayStart,
    Time? totalDayTime,
    DateTime? dayEnd,
    List<Shift>? shifts,
  }) = _ShiftsByDay;

  factory ShiftsByDay.fromJson(Map<String, dynamic> json) =>
      _$ShiftsByDayFromJson(json);
}

@freezed
class Shift with _$Shift {
  const factory Shift({
    int? id,
    DateTime? startTime,
    DateTime? startTimeInTimezone,
    DateTime? endTime,
    DateTime? endTimeInTimezone,
    String? note,
    String? shiftStatus,
    String? shiftTimezone,
    int? userId,
    int? companyId,
    int? projectId,
    Project? project,
    ShiftUser? user,
    Time? totalShiftTime,
  }) = _Shift;

  factory Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);
}

@freezed
class ShiftUser with _$ShiftUser {
  const factory ShiftUser({
    int? id,
    String? name,
    String? email,
    dynamic profileImage,
  }) = _ShiftUser;

  factory ShiftUser.fromJson(Map<String, dynamic> json) =>
      _$ShiftUserFromJson(json);
}

@freezed
class PastShiftModelUser with _$PastShiftModelUser {
  const factory PastShiftModelUser({
    int? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic deletedAt,
    String? name,
    String? email,
    dynamic previousEmail,
    dynamic profileImage,
    dynamic phone,
    bool? isVerified,
    bool? isUserOnboardingCompleted,
    dynamic onboardingStep,
    dynamic verificationEmailLastSentOn,
  }) = _PastShiftModelUser;

  factory PastShiftModelUser.fromJson(Map<String, dynamic> json) =>
      _$PastShiftModelUserFromJson(json);
}
