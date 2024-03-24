// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamActivityModelImpl _$$TeamActivityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamActivityModelImpl(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      total_shift_time: json['total_shift_time'] == null
          ? null
          : TotalShiftTime.fromJson(
              json['total_shift_time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TeamActivityModelImplToJson(
        _$TeamActivityModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'total_shift_time': instance.total_shift_time,
    };

_$TotalShiftTimeImpl _$$TotalShiftTimeImplFromJson(Map<String, dynamic> json) =>
    _$TotalShiftTimeImpl(
      hours: json['hours'] as int?,
      minutes: json['minutes'] as int?,
      seconds: json['seconds'] as int?,
    );

Map<String, dynamic> _$$TotalShiftTimeImplToJson(
        _$TotalShiftTimeImpl instance) =>
    <String, dynamic>{
      'hours': instance.hours,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      isUserActive: json['isUserActive'] as bool?,
      profile_image: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'isUserActive': instance.isUserActive,
      'profile_image': instance.profile_image,
    };
