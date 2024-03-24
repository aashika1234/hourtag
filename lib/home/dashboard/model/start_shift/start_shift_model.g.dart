// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_shift_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StartShiftModelImpl _$$StartShiftModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StartShiftModelImpl(
      total_shift_time: json['total_shift_time'] == null
          ? null
          : TotalShiftTime.fromJson(
              json['total_shift_time'] as Map<String, dynamic>),
      note: json['note'] as String?,
      userId: json['userId'] as int?,
      companyId: json['companyId'] as int?,
      projectId: json['projectId'] as int?,
      shiftTimezone: json['shiftTimezone'] as String?,
      id: json['id'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
      deleted_at: json['deleted_at'],
      start_time: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      forceStopped: json['forceStopped'] as bool?,
    );

Map<String, dynamic> _$$StartShiftModelImplToJson(
        _$StartShiftModelImpl instance) =>
    <String, dynamic>{
      'total_shift_time': instance.total_shift_time,
      'note': instance.note,
      'userId': instance.userId,
      'companyId': instance.companyId,
      'projectId': instance.projectId,
      'shiftTimezone': instance.shiftTimezone,
      'id': instance.id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'start_time': instance.start_time?.toIso8601String(),
      'forceStopped': instance.forceStopped,
    };

_$TotalShiftTimeImpl _$$TotalShiftTimeImplFromJson(Map<String, dynamic> json) =>
    _$TotalShiftTimeImpl(
      hours: json['hours'],
      minutes: json['minutes'],
      seconds: json['seconds'],
    );

Map<String, dynamic> _$$TotalShiftTimeImplToJson(
        _$TotalShiftTimeImpl instance) =>
    <String, dynamic>{
      'hours': instance.hours,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
    };
