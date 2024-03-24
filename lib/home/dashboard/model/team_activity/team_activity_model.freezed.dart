// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamActivityModel _$TeamActivityModelFromJson(Map<String, dynamic> json) {
  return _TeamActivityModel.fromJson(json);
}

/// @nodoc
mixin _$TeamActivityModel {
  User? get user => throw _privateConstructorUsedError;
  TotalShiftTime? get total_shift_time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamActivityModelCopyWith<TeamActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamActivityModelCopyWith<$Res> {
  factory $TeamActivityModelCopyWith(
          TeamActivityModel value, $Res Function(TeamActivityModel) then) =
      _$TeamActivityModelCopyWithImpl<$Res, TeamActivityModel>;
  @useResult
  $Res call({User? user, TotalShiftTime? total_shift_time});

  $UserCopyWith<$Res>? get user;
  $TotalShiftTimeCopyWith<$Res>? get total_shift_time;
}

/// @nodoc
class _$TeamActivityModelCopyWithImpl<$Res, $Val extends TeamActivityModel>
    implements $TeamActivityModelCopyWith<$Res> {
  _$TeamActivityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? total_shift_time = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      total_shift_time: freezed == total_shift_time
          ? _value.total_shift_time
          : total_shift_time // ignore: cast_nullable_to_non_nullable
              as TotalShiftTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalShiftTimeCopyWith<$Res>? get total_shift_time {
    if (_value.total_shift_time == null) {
      return null;
    }

    return $TotalShiftTimeCopyWith<$Res>(_value.total_shift_time!, (value) {
      return _then(_value.copyWith(total_shift_time: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamActivityModelImplCopyWith<$Res>
    implements $TeamActivityModelCopyWith<$Res> {
  factory _$$TeamActivityModelImplCopyWith(_$TeamActivityModelImpl value,
          $Res Function(_$TeamActivityModelImpl) then) =
      __$$TeamActivityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, TotalShiftTime? total_shift_time});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $TotalShiftTimeCopyWith<$Res>? get total_shift_time;
}

/// @nodoc
class __$$TeamActivityModelImplCopyWithImpl<$Res>
    extends _$TeamActivityModelCopyWithImpl<$Res, _$TeamActivityModelImpl>
    implements _$$TeamActivityModelImplCopyWith<$Res> {
  __$$TeamActivityModelImplCopyWithImpl(_$TeamActivityModelImpl _value,
      $Res Function(_$TeamActivityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? total_shift_time = freezed,
  }) {
    return _then(_$TeamActivityModelImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      total_shift_time: freezed == total_shift_time
          ? _value.total_shift_time
          : total_shift_time // ignore: cast_nullable_to_non_nullable
              as TotalShiftTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamActivityModelImpl implements _TeamActivityModel {
  const _$TeamActivityModelImpl({this.user, this.total_shift_time});

  factory _$TeamActivityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamActivityModelImplFromJson(json);

  @override
  final User? user;
  @override
  final TotalShiftTime? total_shift_time;

  @override
  String toString() {
    return 'TeamActivityModel(user: $user, total_shift_time: $total_shift_time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamActivityModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.total_shift_time, total_shift_time) ||
                other.total_shift_time == total_shift_time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, total_shift_time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamActivityModelImplCopyWith<_$TeamActivityModelImpl> get copyWith =>
      __$$TeamActivityModelImplCopyWithImpl<_$TeamActivityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamActivityModelImplToJson(
      this,
    );
  }
}

abstract class _TeamActivityModel implements TeamActivityModel {
  const factory _TeamActivityModel(
      {final User? user,
      final TotalShiftTime? total_shift_time}) = _$TeamActivityModelImpl;

  factory _TeamActivityModel.fromJson(Map<String, dynamic> json) =
      _$TeamActivityModelImpl.fromJson;

  @override
  User? get user;
  @override
  TotalShiftTime? get total_shift_time;
  @override
  @JsonKey(ignore: true)
  _$$TeamActivityModelImplCopyWith<_$TeamActivityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TotalShiftTime _$TotalShiftTimeFromJson(Map<String, dynamic> json) {
  return _TotalShiftTime.fromJson(json);
}

/// @nodoc
mixin _$TotalShiftTime {
  int? get hours => throw _privateConstructorUsedError;
  int? get minutes => throw _privateConstructorUsedError;
  int? get seconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalShiftTimeCopyWith<TotalShiftTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalShiftTimeCopyWith<$Res> {
  factory $TotalShiftTimeCopyWith(
          TotalShiftTime value, $Res Function(TotalShiftTime) then) =
      _$TotalShiftTimeCopyWithImpl<$Res, TotalShiftTime>;
  @useResult
  $Res call({int? hours, int? minutes, int? seconds});
}

/// @nodoc
class _$TotalShiftTimeCopyWithImpl<$Res, $Val extends TotalShiftTime>
    implements $TotalShiftTimeCopyWith<$Res> {
  _$TotalShiftTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = freezed,
    Object? minutes = freezed,
    Object? seconds = freezed,
  }) {
    return _then(_value.copyWith(
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalShiftTimeImplCopyWith<$Res>
    implements $TotalShiftTimeCopyWith<$Res> {
  factory _$$TotalShiftTimeImplCopyWith(_$TotalShiftTimeImpl value,
          $Res Function(_$TotalShiftTimeImpl) then) =
      __$$TotalShiftTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? hours, int? minutes, int? seconds});
}

/// @nodoc
class __$$TotalShiftTimeImplCopyWithImpl<$Res>
    extends _$TotalShiftTimeCopyWithImpl<$Res, _$TotalShiftTimeImpl>
    implements _$$TotalShiftTimeImplCopyWith<$Res> {
  __$$TotalShiftTimeImplCopyWithImpl(
      _$TotalShiftTimeImpl _value, $Res Function(_$TotalShiftTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = freezed,
    Object? minutes = freezed,
    Object? seconds = freezed,
  }) {
    return _then(_$TotalShiftTimeImpl(
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalShiftTimeImpl implements _TotalShiftTime {
  const _$TotalShiftTimeImpl({this.hours, this.minutes, this.seconds});

  factory _$TotalShiftTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalShiftTimeImplFromJson(json);

  @override
  final int? hours;
  @override
  final int? minutes;
  @override
  final int? seconds;

  @override
  String toString() {
    return 'TotalShiftTime(hours: $hours, minutes: $minutes, seconds: $seconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalShiftTimeImpl &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.seconds, seconds) || other.seconds == seconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hours, minutes, seconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalShiftTimeImplCopyWith<_$TotalShiftTimeImpl> get copyWith =>
      __$$TotalShiftTimeImplCopyWithImpl<_$TotalShiftTimeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalShiftTimeImplToJson(
      this,
    );
  }
}

abstract class _TotalShiftTime implements TotalShiftTime {
  const factory _TotalShiftTime(
      {final int? hours,
      final int? minutes,
      final int? seconds}) = _$TotalShiftTimeImpl;

  factory _TotalShiftTime.fromJson(Map<String, dynamic> json) =
      _$TotalShiftTimeImpl.fromJson;

  @override
  int? get hours;
  @override
  int? get minutes;
  @override
  int? get seconds;
  @override
  @JsonKey(ignore: true)
  _$$TotalShiftTimeImplCopyWith<_$TotalShiftTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get isUserActive => throw _privateConstructorUsedError;
  String? get profile_image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? name,
      bool? isUserActive,
      String? profile_image});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? isUserActive = freezed,
    Object? profile_image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isUserActive: freezed == isUserActive
          ? _value.isUserActive
          : isUserActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? name,
      bool? isUserActive,
      String? profile_image});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? isUserActive = freezed,
    Object? profile_image = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isUserActive: freezed == isUserActive
          ? _value.isUserActive
          : isUserActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.id, this.email, this.name, this.isUserActive, this.profile_image});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final bool? isUserActive;
  @override
  final String? profile_image;

  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name, isUserActive: $isUserActive, profile_image: $profile_image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isUserActive, isUserActive) ||
                other.isUserActive == isUserActive) &&
            (identical(other.profile_image, profile_image) ||
                other.profile_image == profile_image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, name, isUserActive, profile_image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final int? id,
      final String? email,
      final String? name,
      final bool? isUserActive,
      final String? profile_image}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get email;
  @override
  String? get name;
  @override
  bool? get isUserActive;
  @override
  String? get profile_image;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
