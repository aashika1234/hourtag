// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_shift_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyShiftModelImpl _$$WeeklyShiftModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyShiftModelImpl(
      weeklyShiftSummary: json['weeklyShiftSummary'] == null
          ? null
          : WeeklyShiftSummary.fromJson(
              json['weeklyShiftSummary'] as Map<String, dynamic>),
      todaysShifts: json['todaysShifts'] == null
          ? null
          : TodaysShifts.fromJson(json['todaysShifts'] as Map<String, dynamic>),
      globalShiftTime: json['globalShiftTime'] == null
          ? null
          : GlobalShiftTime.fromJson(
              json['globalShiftTime'] as Map<String, dynamic>),
      shiftResponse: (json['shiftResponse'] as List<dynamic>?)
          ?.map((e) => TodaysShifts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeeklyShiftModelImplToJson(
        _$WeeklyShiftModelImpl instance) =>
    <String, dynamic>{
      'weeklyShiftSummary': instance.weeklyShiftSummary,
      'todaysShifts': instance.todaysShifts,
      'globalShiftTime': instance.globalShiftTime,
      'shiftResponse': instance.shiftResponse,
    };

_$GlobalShiftTimeImpl _$$GlobalShiftTimeImplFromJson(
        Map<String, dynamic> json) =>
    _$GlobalShiftTimeImpl(
      hours: json['hours'] as int?,
      minutes: json['minutes'] as int?,
      seconds: json['seconds'] as int?,
    );

Map<String, dynamic> _$$GlobalShiftTimeImplToJson(
        _$GlobalShiftTimeImpl instance) =>
    <String, dynamic>{
      'hours': instance.hours,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
    };

_$TodaysShiftsImpl _$$TodaysShiftsImplFromJson(Map<String, dynamic> json) =>
    _$TodaysShiftsImpl(
      day: json['day'] as String?,
      totalShiftTime: json['totalShiftTime'] == null
          ? null
          : GlobalShiftTime.fromJson(
              json['totalShiftTime'] as Map<String, dynamic>),
      shifts: (json['shifts'] as List<dynamic>?)
          ?.map((e) => Shift.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TodaysShiftsImplToJson(_$TodaysShiftsImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'totalShiftTime': instance.totalShiftTime,
      'shifts': instance.shifts,
    };

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      colorCode: json['colorCode'] as String?,
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'colorCode': instance.colorCode,
    };

_$WeeklyShiftSummaryImpl _$$WeeklyShiftSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyShiftSummaryImpl(
      weekStart: json['weekStart'] as String?,
      weekEnd: json['weekEnd'] as String?,
      totalTargetHours: json['totalTargetHours'] as int?,
      totalHoursWorked: (json['totalHoursWorked'] as num?)?.toDouble(),
      averageWorkingHoursPerDay: json['averageWorkingHoursPerDay'] == null
          ? null
          : AverageWorkingHoursPerDay.fromJson(
              json['averageWorkingHoursPerDay'] as Map<String, dynamic>),
      percentage: json['percentage'] as int?,
      hoursWorkedOvertime: json['hoursWorkedOvertime'] as int?,
      totalHoursWorkedInHoursMinutes: json['totalHoursWorkedInHoursMinutes'] ==
              null
          ? null
          : GlobalShiftTime.fromJson(
              json['totalHoursWorkedInHoursMinutes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeeklyShiftSummaryImplToJson(
        _$WeeklyShiftSummaryImpl instance) =>
    <String, dynamic>{
      'weekStart': instance.weekStart,
      'weekEnd': instance.weekEnd,
      'totalTargetHours': instance.totalTargetHours,
      'totalHoursWorked': instance.totalHoursWorked,
      'averageWorkingHoursPerDay': instance.averageWorkingHoursPerDay,
      'percentage': instance.percentage,
      'hoursWorkedOvertime': instance.hoursWorkedOvertime,
      'totalHoursWorkedInHoursMinutes': instance.totalHoursWorkedInHoursMinutes,
    };

_$AverageWorkingHoursPerDayImpl _$$AverageWorkingHoursPerDayImplFromJson(
        Map<String, dynamic> json) =>
    _$AverageWorkingHoursPerDayImpl(
      hours: json['hours'] as int?,
      minutes: json['minutes'] as int?,
    );

Map<String, dynamic> _$$AverageWorkingHoursPerDayImplToJson(
        _$AverageWorkingHoursPerDayImpl instance) =>
    <String, dynamic>{
      'hours': instance.hours,
      'minutes': instance.minutes,
    };
