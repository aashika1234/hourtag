// To parse this JSON data, do
//
//     final pastShiftModel = pastShiftModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:hourtag/home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';

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
    @JsonKey(name: 'week_start') DateTime? weekStart,
    @JsonKey(name: 'week_end') DateTime? weekEnd,
    List<ShiftsByDay>? shiftsByDay,
    Time? totalWeekTime,
  }) = _ShiftsByWeek;

  factory ShiftsByWeek.fromJson(Map<String, dynamic> json) =>
      _$ShiftsByWeekFromJson(json);
}

@freezed
class ShiftsByDay with _$ShiftsByDay {
  const factory ShiftsByDay({
    @JsonKey(name: 'day_start') DateTime? dayStart,
    Time? totalDayTime,
    @JsonKey(name: 'day_end') DateTime? dayEnd,
    List<Shift>? shifts,
  }) = _ShiftsByDay;

  factory ShiftsByDay.fromJson(Map<String, dynamic> json) =>
      _$ShiftsByDayFromJson(json);
}

@freezed
class ShiftUser with _$ShiftUser {
  const factory ShiftUser({
    int? id,
    String? name,
    String? email,
    @JsonKey(name: 'profile_image') String? profileImage,
  }) = _ShiftUser;

  factory ShiftUser.fromJson(Map<String, dynamic> json) =>
      _$ShiftUserFromJson(json);
}

@freezed
class PastShiftModelUser with _$PastShiftModelUser {
  const factory PastShiftModelUser({
    int? id,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    String? name,
    String? email,
    @JsonKey(name: 'previous_email') String? previousEmail,
    @JsonKey(name: 'profile_image') String? profileImage,
    String? phone,
    @JsonKey(name: 'is_verified') bool? isVerified,
    @JsonKey(name: 'is_user_onboarding_completed')
    bool? isUserOnboardingCompleted,
    @JsonKey(name: 'onboarding_step') String? onboardingStep,
    @JsonKey(name: 'verification_email_last_sent_on')
    DateTime? verificationEmailLastSentOn,
  }) = _PastShiftModelUser;

  factory PastShiftModelUser.fromJson(Map<String, dynamic> json) =>
      _$PastShiftModelUserFromJson(json);
}
