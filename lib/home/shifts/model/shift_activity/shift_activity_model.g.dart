// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShiftActivityModelImpl _$$ShiftActivityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ShiftActivityModelImpl(
      today: json['today'] == null
          ? null
          : ThisMonth.fromJson(json['today'] as Map<String, dynamic>),
      thisWeek: json['thisWeek'] == null
          ? null
          : ThisMonth.fromJson(json['thisWeek'] as Map<String, dynamic>),
      thisMonth: json['thisMonth'] == null
          ? null
          : ThisMonth.fromJson(json['thisMonth'] as Map<String, dynamic>),
      percentage: json['percentage'] as int?,
      targetedWorkingHoursType: json['targetedWorkingHoursType'] as String?,
    );

Map<String, dynamic> _$$ShiftActivityModelImplToJson(
        _$ShiftActivityModelImpl instance) =>
    <String, dynamic>{
      'today': instance.today,
      'thisWeek': instance.thisWeek,
      'thisMonth': instance.thisMonth,
      'percentage': instance.percentage,
      'targetedWorkingHoursType': instance.targetedWorkingHoursType,
    };

_$ThisMonthImpl _$$ThisMonthImplFromJson(Map<String, dynamic> json) =>
    _$ThisMonthImpl(
      hours: json['hours'] as int?,
      minutes: json['minutes'] as int?,
      seconds: json['seconds'] as int?,
    );

Map<String, dynamic> _$$ThisMonthImplToJson(_$ThisMonthImpl instance) =>
    <String, dynamic>{
      'hours': instance.hours,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
    };
