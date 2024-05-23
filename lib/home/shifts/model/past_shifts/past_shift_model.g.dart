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
      weekStart: json['weekStart'] == null
          ? null
          : DateTime.parse(json['weekStart'] as String),
      weekEnd: json['weekEnd'] == null
          ? null
          : DateTime.parse(json['weekEnd'] as String),
      shiftsByDay: (json['shiftsByDay'] as List<dynamic>?)
          ?.map((e) => ShiftsByDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalWeekTime: json['totalWeekTime'] == null
          ? null
          : Time.fromJson(json['totalWeekTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShiftsByWeekImplToJson(_$ShiftsByWeekImpl instance) =>
    <String, dynamic>{
      'weekStart': instance.weekStart?.toIso8601String(),
      'weekEnd': instance.weekEnd?.toIso8601String(),
      'shiftsByDay': instance.shiftsByDay,
      'totalWeekTime': instance.totalWeekTime,
    };

_$ShiftsByDayImpl _$$ShiftsByDayImplFromJson(Map<String, dynamic> json) =>
    _$ShiftsByDayImpl(
      dayStart: json['dayStart'] == null
          ? null
          : DateTime.parse(json['dayStart'] as String),
      totalDayTime: json['totalDayTime'] == null
          ? null
          : Time.fromJson(json['totalDayTime'] as Map<String, dynamic>),
      dayEnd: json['dayEnd'] == null
          ? null
          : DateTime.parse(json['dayEnd'] as String),
      shifts: (json['shifts'] as List<dynamic>?)
          ?.map((e) => Shift.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShiftsByDayImplToJson(_$ShiftsByDayImpl instance) =>
    <String, dynamic>{
      'dayStart': instance.dayStart?.toIso8601String(),
      'totalDayTime': instance.totalDayTime,
      'dayEnd': instance.dayEnd?.toIso8601String(),
      'shifts': instance.shifts,
    };

_$ShiftImpl _$$ShiftImplFromJson(Map<String, dynamic> json) => _$ShiftImpl(
      id: json['id'] as int?,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      startTimeInTimezone: json['startTimeInTimezone'] == null
          ? null
          : DateTime.parse(json['startTimeInTimezone'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      endTimeInTimezone: json['endTimeInTimezone'] == null
          ? null
          : DateTime.parse(json['endTimeInTimezone'] as String),
      note: json['note'] as String?,
      shiftStatus: json['shiftStatus'] as String?,
      shiftTimezone: json['shiftTimezone'] as String?,
      userId: json['userId'] as int?,
      companyId: json['companyId'] as int?,
      projectId: json['projectId'] as int?,
      project: json['project'] == null
          ? null
          : Project.fromJson(json['project'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : ShiftUser.fromJson(json['user'] as Map<String, dynamic>),
      totalShiftTime: json['totalShiftTime'] == null
          ? null
          : Time.fromJson(json['totalShiftTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShiftImplToJson(_$ShiftImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime?.toIso8601String(),
      'startTimeInTimezone': instance.startTimeInTimezone?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'endTimeInTimezone': instance.endTimeInTimezone?.toIso8601String(),
      'note': instance.note,
      'shiftStatus': instance.shiftStatus,
      'shiftTimezone': instance.shiftTimezone,
      'userId': instance.userId,
      'companyId': instance.companyId,
      'projectId': instance.projectId,
      'project': instance.project,
      'user': instance.user,
      'totalShiftTime': instance.totalShiftTime,
    };

_$ShiftUserImpl _$$ShiftUserImplFromJson(Map<String, dynamic> json) =>
    _$ShiftUserImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      profileImage: json['profileImage'],
    );

Map<String, dynamic> _$$ShiftUserImplToJson(_$ShiftUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'profileImage': instance.profileImage,
    };

_$PastShiftModelUserImpl _$$PastShiftModelUserImplFromJson(
        Map<String, dynamic> json) =>
    _$PastShiftModelUserImpl(
      id: json['id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'],
      name: json['name'] as String?,
      email: json['email'] as String?,
      previousEmail: json['previousEmail'],
      profileImage: json['profileImage'],
      phone: json['phone'],
      isVerified: json['isVerified'] as bool?,
      isUserOnboardingCompleted: json['isUserOnboardingCompleted'] as bool?,
      onboardingStep: json['onboardingStep'],
      verificationEmailLastSentOn: json['verificationEmailLastSentOn'],
    );

Map<String, dynamic> _$$PastShiftModelUserImplToJson(
        _$PastShiftModelUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt,
      'name': instance.name,
      'email': instance.email,
      'previousEmail': instance.previousEmail,
      'profileImage': instance.profileImage,
      'phone': instance.phone,
      'isVerified': instance.isVerified,
      'isUserOnboardingCompleted': instance.isUserOnboardingCompleted,
      'onboardingStep': instance.onboardingStep,
      'verificationEmailLastSentOn': instance.verificationEmailLastSentOn,
    };
