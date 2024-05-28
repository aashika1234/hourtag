// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'past_shift_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PastShiftModelImpl _$$PastShiftModelImplFromJson(Map<String, dynamic> json) =>
    _$PastShiftModelImpl(
      globalShiftTime: json['globalShiftTime'] == null
          ? null
          : Time.fromJson(json['globalShiftTime'] as Map<String, dynamic>),
      projects: (json['projects'] as List<dynamic>?)
          ?.map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
      shiftsByWeek: (json['shiftsByWeek'] as List<dynamic>?)
          ?.map((e) => ShiftsByWeek.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : PastShiftModelUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PastShiftModelImplToJson(
        _$PastShiftModelImpl instance) =>
    <String, dynamic>{
      'globalShiftTime': instance.globalShiftTime,
      'projects': instance.projects,
      'shiftsByWeek': instance.shiftsByWeek,
      'user': instance.user,
    };

_$TimeImpl _$$TimeImplFromJson(Map<String, dynamic> json) => _$TimeImpl(
      hours: json['hours'] as int?,
      minutes: json['minutes'] as int?,
      seconds: json['seconds'] as int?,
    );

Map<String, dynamic> _$$TimeImplToJson(_$TimeImpl instance) =>
    <String, dynamic>{
      'hours': instance.hours,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
    };

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      colorCode: json['colorCode'] as String?,
      totalShiftTime: json['totalShiftTime'] == null
          ? null
          : Time.fromJson(json['totalShiftTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'colorCode': instance.colorCode,
      'totalShiftTime': instance.totalShiftTime,
    };

_$ShiftsByWeekImpl _$$ShiftsByWeekImplFromJson(Map<String, dynamic> json) =>
    _$ShiftsByWeekImpl(
      weekStart: json['week_start'] == null
          ? null
          : DateTime.parse(json['week_start'] as String),
      weekEnd: json['week_end'] == null
          ? null
          : DateTime.parse(json['week_end'] as String),
      shiftsByDay: (json['shiftsByDay'] as List<dynamic>?)
          ?.map((e) => ShiftsByDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalWeekTime: json['totalWeekTime'] == null
          ? null
          : Time.fromJson(json['totalWeekTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShiftsByWeekImplToJson(_$ShiftsByWeekImpl instance) =>
    <String, dynamic>{
      'week_start': instance.weekStart?.toIso8601String(),
      'week_end': instance.weekEnd?.toIso8601String(),
      'shiftsByDay': instance.shiftsByDay,
      'totalWeekTime': instance.totalWeekTime,
    };

_$ShiftsByDayImpl _$$ShiftsByDayImplFromJson(Map<String, dynamic> json) =>
    _$ShiftsByDayImpl(
      dayStart: json['day_start'] == null
          ? null
          : DateTime.parse(json['day_start'] as String),
      totalDayTime: json['totalDayTime'] == null
          ? null
          : Time.fromJson(json['totalDayTime'] as Map<String, dynamic>),
      dayEnd: json['day_end'] == null
          ? null
          : DateTime.parse(json['day_end'] as String),
      shifts: (json['shifts'] as List<dynamic>?)
          ?.map((e) => Shift.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShiftsByDayImplToJson(_$ShiftsByDayImpl instance) =>
    <String, dynamic>{
      'day_start': instance.dayStart?.toIso8601String(),
      'totalDayTime': instance.totalDayTime,
      'day_end': instance.dayEnd?.toIso8601String(),
      'shifts': instance.shifts,
    };

_$ShiftUserImpl _$$ShiftUserImplFromJson(Map<String, dynamic> json) =>
    _$ShiftUserImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      profileImage: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$ShiftUserImplToJson(_$ShiftUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'profile_image': instance.profileImage,
    };

_$PastShiftModelUserImpl _$$PastShiftModelUserImplFromJson(
        Map<String, dynamic> json) =>
    _$PastShiftModelUserImpl(
      id: json['id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      name: json['name'] as String?,
      email: json['email'] as String?,
      previousEmail: json['previous_email'] as String?,
      profileImage: json['profile_image'] as String?,
      phone: json['phone'] as String?,
      isVerified: json['is_verified'] as bool?,
      isUserOnboardingCompleted: json['is_user_onboarding_completed'] as bool?,
      onboardingStep: json['onboarding_step'] as String?,
      verificationEmailLastSentOn: json['verification_email_last_sent_on'] ==
              null
          ? null
          : DateTime.parse(json['verification_email_last_sent_on'] as String),
    );

Map<String, dynamic> _$$PastShiftModelUserImplToJson(
        _$PastShiftModelUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'name': instance.name,
      'email': instance.email,
      'previous_email': instance.previousEmail,
      'profile_image': instance.profileImage,
      'phone': instance.phone,
      'is_verified': instance.isVerified,
      'is_user_onboarding_completed': instance.isUserOnboardingCompleted,
      'onboarding_step': instance.onboardingStep,
      'verification_email_last_sent_on':
          instance.verificationEmailLastSentOn?.toIso8601String(),
    };
