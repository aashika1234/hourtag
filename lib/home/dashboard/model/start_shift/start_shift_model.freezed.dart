// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_shift_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StartShiftModel _$StartShiftModelFromJson(Map<String, dynamic> json) {
  return _StartShiftModel.fromJson(json);
}

/// @nodoc
mixin _$StartShiftModel {
  TotalShiftTime? get total_shift_time => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get companyId => throw _privateConstructorUsedError;
  int? get projectId => throw _privateConstructorUsedError;
  String? get shiftTimezone => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  dynamic get updated_at => throw _privateConstructorUsedError;
  dynamic get deleted_at => throw _privateConstructorUsedError;
  DateTime? get start_time => throw _privateConstructorUsedError;
  bool? get forceStopped => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartShiftModelCopyWith<StartShiftModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartShiftModelCopyWith<$Res> {
  factory $StartShiftModelCopyWith(
          StartShiftModel value, $Res Function(StartShiftModel) then) =
      _$StartShiftModelCopyWithImpl<$Res, StartShiftModel>;
  @useResult
  $Res call(
      {TotalShiftTime? total_shift_time,
      String? note,
      int? userId,
      int? companyId,
      int? projectId,
      String? shiftTimezone,
      int? id,
      DateTime? created_at,
      dynamic updated_at,
      dynamic deleted_at,
      DateTime? start_time,
      bool? forceStopped});

  $TotalShiftTimeCopyWith<$Res>? get total_shift_time;
}

/// @nodoc
class _$StartShiftModelCopyWithImpl<$Res, $Val extends StartShiftModel>
    implements $StartShiftModelCopyWith<$Res> {
  _$StartShiftModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total_shift_time = freezed,
    Object? note = freezed,
    Object? userId = freezed,
    Object? companyId = freezed,
    Object? projectId = freezed,
    Object? shiftTimezone = freezed,
    Object? id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? start_time = freezed,
    Object? forceStopped = freezed,
  }) {
    return _then(_value.copyWith(
      total_shift_time: freezed == total_shift_time
          ? _value.total_shift_time
          : total_shift_time // ignore: cast_nullable_to_non_nullable
              as TotalShiftTime?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
      shiftTimezone: freezed == shiftTimezone
          ? _value.shiftTimezone
          : shiftTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      forceStopped: freezed == forceStopped
          ? _value.forceStopped
          : forceStopped // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
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
abstract class _$$StartShiftModelImplCopyWith<$Res>
    implements $StartShiftModelCopyWith<$Res> {
  factory _$$StartShiftModelImplCopyWith(_$StartShiftModelImpl value,
          $Res Function(_$StartShiftModelImpl) then) =
      __$$StartShiftModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TotalShiftTime? total_shift_time,
      String? note,
      int? userId,
      int? companyId,
      int? projectId,
      String? shiftTimezone,
      int? id,
      DateTime? created_at,
      dynamic updated_at,
      dynamic deleted_at,
      DateTime? start_time,
      bool? forceStopped});

  @override
  $TotalShiftTimeCopyWith<$Res>? get total_shift_time;
}

/// @nodoc
class __$$StartShiftModelImplCopyWithImpl<$Res>
    extends _$StartShiftModelCopyWithImpl<$Res, _$StartShiftModelImpl>
    implements _$$StartShiftModelImplCopyWith<$Res> {
  __$$StartShiftModelImplCopyWithImpl(
      _$StartShiftModelImpl _value, $Res Function(_$StartShiftModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total_shift_time = freezed,
    Object? note = freezed,
    Object? userId = freezed,
    Object? companyId = freezed,
    Object? projectId = freezed,
    Object? shiftTimezone = freezed,
    Object? id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? start_time = freezed,
    Object? forceStopped = freezed,
  }) {
    return _then(_$StartShiftModelImpl(
      total_shift_time: freezed == total_shift_time
          ? _value.total_shift_time
          : total_shift_time // ignore: cast_nullable_to_non_nullable
              as TotalShiftTime?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
      shiftTimezone: freezed == shiftTimezone
          ? _value.shiftTimezone
          : shiftTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      forceStopped: freezed == forceStopped
          ? _value.forceStopped
          : forceStopped // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StartShiftModelImpl implements _StartShiftModel {
  const _$StartShiftModelImpl(
      {this.total_shift_time,
      this.note,
      this.userId,
      this.companyId,
      this.projectId,
      this.shiftTimezone,
      this.id,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.start_time,
      this.forceStopped});

  factory _$StartShiftModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartShiftModelImplFromJson(json);

  @override
  final TotalShiftTime? total_shift_time;
  @override
  final String? note;
  @override
  final int? userId;
  @override
  final int? companyId;
  @override
  final int? projectId;
  @override
  final String? shiftTimezone;
  @override
  final int? id;
  @override
  final DateTime? created_at;
  @override
  final dynamic updated_at;
  @override
  final dynamic deleted_at;
  @override
  final DateTime? start_time;
  @override
  final bool? forceStopped;

  @override
  String toString() {
    return 'StartShiftModel(total_shift_time: $total_shift_time, note: $note, userId: $userId, companyId: $companyId, projectId: $projectId, shiftTimezone: $shiftTimezone, id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, start_time: $start_time, forceStopped: $forceStopped)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartShiftModelImpl &&
            (identical(other.total_shift_time, total_shift_time) ||
                other.total_shift_time == total_shift_time) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.shiftTimezone, shiftTimezone) ||
                other.shiftTimezone == shiftTimezone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality()
                .equals(other.deleted_at, deleted_at) &&
            (identical(other.start_time, start_time) ||
                other.start_time == start_time) &&
            (identical(other.forceStopped, forceStopped) ||
                other.forceStopped == forceStopped));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      total_shift_time,
      note,
      userId,
      companyId,
      projectId,
      shiftTimezone,
      id,
      created_at,
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(deleted_at),
      start_time,
      forceStopped);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartShiftModelImplCopyWith<_$StartShiftModelImpl> get copyWith =>
      __$$StartShiftModelImplCopyWithImpl<_$StartShiftModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StartShiftModelImplToJson(
      this,
    );
  }
}

abstract class _StartShiftModel implements StartShiftModel {
  const factory _StartShiftModel(
      {final TotalShiftTime? total_shift_time,
      final String? note,
      final int? userId,
      final int? companyId,
      final int? projectId,
      final String? shiftTimezone,
      final int? id,
      final DateTime? created_at,
      final dynamic updated_at,
      final dynamic deleted_at,
      final DateTime? start_time,
      final bool? forceStopped}) = _$StartShiftModelImpl;

  factory _StartShiftModel.fromJson(Map<String, dynamic> json) =
      _$StartShiftModelImpl.fromJson;

  @override
  TotalShiftTime? get total_shift_time;
  @override
  String? get note;
  @override
  int? get userId;
  @override
  int? get companyId;
  @override
  int? get projectId;
  @override
  String? get shiftTimezone;
  @override
  int? get id;
  @override
  DateTime? get created_at;
  @override
  dynamic get updated_at;
  @override
  dynamic get deleted_at;
  @override
  DateTime? get start_time;
  @override
  bool? get forceStopped;
  @override
  @JsonKey(ignore: true)
  _$$StartShiftModelImplCopyWith<_$StartShiftModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TotalShiftTime _$TotalShiftTimeFromJson(Map<String, dynamic> json) {
  return _TotalShiftTime.fromJson(json);
}

/// @nodoc
mixin _$TotalShiftTime {
  dynamic get hours => throw _privateConstructorUsedError;
  dynamic get minutes => throw _privateConstructorUsedError;
  dynamic get seconds => throw _privateConstructorUsedError;

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
  $Res call({dynamic hours, dynamic minutes, dynamic seconds});
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
              as dynamic,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
  $Res call({dynamic hours, dynamic minutes, dynamic seconds});
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
              as dynamic,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
  final dynamic hours;
  @override
  final dynamic minutes;
  @override
  final dynamic seconds;

  @override
  String toString() {
    return 'TotalShiftTime(hours: $hours, minutes: $minutes, seconds: $seconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalShiftTimeImpl &&
            const DeepCollectionEquality().equals(other.hours, hours) &&
            const DeepCollectionEquality().equals(other.minutes, minutes) &&
            const DeepCollectionEquality().equals(other.seconds, seconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hours),
      const DeepCollectionEquality().hash(minutes),
      const DeepCollectionEquality().hash(seconds));

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
      {final dynamic hours,
      final dynamic minutes,
      final dynamic seconds}) = _$TotalShiftTimeImpl;

  factory _TotalShiftTime.fromJson(Map<String, dynamic> json) =
      _$TotalShiftTimeImpl.fromJson;

  @override
  dynamic get hours;
  @override
  dynamic get minutes;
  @override
  dynamic get seconds;
  @override
  @JsonKey(ignore: true)
  _$$TotalShiftTimeImplCopyWith<_$TotalShiftTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
