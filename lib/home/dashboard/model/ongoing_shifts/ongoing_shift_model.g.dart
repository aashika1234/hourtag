// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ongoing_shift_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OngoingShiftModelImpl _$$OngoingShiftModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OngoingShiftModelImpl(
      totalShifts: json['totalShifts'] == null
          ? null
          : TotalShift.fromJson(json['totalShifts'] as Map<String, dynamic>),
      todaysShifts: (json['todaysShifts'] as List<dynamic>?)
          ?.map((e) => Shift.fromJson(e as Map<String, dynamic>))
          .toList(),
      ongoingShift: json['ongoingShift'] == null
          ? null
          : Shift.fromJson(json['ongoingShift'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OngoingShiftModelImplToJson(
        _$OngoingShiftModelImpl instance) =>
    <String, dynamic>{
      'totalShifts': instance.totalShifts,
      'todaysShifts': instance.todaysShifts,
      'ongoingShift': instance.ongoingShift,
    };

_$ShiftImpl _$$ShiftImplFromJson(Map<String, dynamic> json) => _$ShiftImpl(
      total_shift_time: json['total_shift_time'] == null
          ? null
          : TotalShift.fromJson(
              json['total_shift_time'] as Map<String, dynamic>),
      id: json['id'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deleted_at: json['deleted_at'],
      note: json['note'] as String?,
      start_time: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      end_time: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      userId: json['userId'] as int?,
      companyId: json['companyId'] as int?,
      projectId: json['projectId'] as int?,
      shiftTimezone: json['shiftTimezone'] as String?,
      forceStopped: json['forceStopped'] as bool?,
      shiftStatus: json['shiftStatus'] as String?,
      project: json['project'] == null
          ? null
          : Project.fromJson(json['project'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShiftImplToJson(_$ShiftImpl instance) =>
    <String, dynamic>{
      'total_shift_time': instance.total_shift_time,
      'id': instance.id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'deleted_at': instance.deleted_at,
      'note': instance.note,
      'start_time': instance.start_time?.toIso8601String(),
      'end_time': instance.end_time?.toIso8601String(),
      'userId': instance.userId,
      'companyId': instance.companyId,
      'projectId': instance.projectId,
      'shiftTimezone': instance.shiftTimezone,
      'forceStopped': instance.forceStopped,
      'shiftStatus': instance.shiftStatus,
      'project': instance.project,
    };

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      id: json['id'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
      deleted_at: json['deleted_at'],
      name: json['name'] as String?,
      description: json['description'],
      colorCode: json['colorCode'] as String?,
      createdByUserId: json['createdByUserId'] as int?,
      companyId: json['companyId'] as int?,
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'name': instance.name,
      'description': instance.description,
      'colorCode': instance.colorCode,
      'createdByUserId': instance.createdByUserId,
      'companyId': instance.companyId,
    };

_$TotalShiftImpl _$$TotalShiftImplFromJson(Map<String, dynamic> json) =>
    _$TotalShiftImpl(
      hours: json['hours'] as int?,
      minutes: json['minutes'] as int?,
      seconds: json['seconds'] as int?,
    );

Map<String, dynamic> _$$TotalShiftImplToJson(_$TotalShiftImpl instance) =>
    <String, dynamic>{
      'hours': instance.hours,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
    };
