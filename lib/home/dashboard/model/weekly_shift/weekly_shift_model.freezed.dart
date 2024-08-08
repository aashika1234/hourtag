// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_shift_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyShiftModel _$WeeklyShiftModelFromJson(Map<String, dynamic> json) {
  return _WeeklyShiftModel.fromJson(json);
}

/// @nodoc
mixin _$WeeklyShiftModel {
  WeeklyShiftSummary? get weeklyShiftSummary =>
      throw _privateConstructorUsedError;
  TodaysShifts? get todaysShifts => throw _privateConstructorUsedError;
  GlobalShiftTime? get globalShiftTime => throw _privateConstructorUsedError;
  List<TodaysShifts>? get shiftResponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyShiftModelCopyWith<WeeklyShiftModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyShiftModelCopyWith<$Res> {
  factory $WeeklyShiftModelCopyWith(
          WeeklyShiftModel value, $Res Function(WeeklyShiftModel) then) =
      _$WeeklyShiftModelCopyWithImpl<$Res, WeeklyShiftModel>;
  @useResult
  $Res call(
      {WeeklyShiftSummary? weeklyShiftSummary,
      TodaysShifts? todaysShifts,
      GlobalShiftTime? globalShiftTime,
      List<TodaysShifts>? shiftResponse});

  $WeeklyShiftSummaryCopyWith<$Res>? get weeklyShiftSummary;
  $TodaysShiftsCopyWith<$Res>? get todaysShifts;
  $GlobalShiftTimeCopyWith<$Res>? get globalShiftTime;
}

/// @nodoc
class _$WeeklyShiftModelCopyWithImpl<$Res, $Val extends WeeklyShiftModel>
    implements $WeeklyShiftModelCopyWith<$Res> {
  _$WeeklyShiftModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeklyShiftSummary = freezed,
    Object? todaysShifts = freezed,
    Object? globalShiftTime = freezed,
    Object? shiftResponse = freezed,
  }) {
    return _then(_value.copyWith(
      weeklyShiftSummary: freezed == weeklyShiftSummary
          ? _value.weeklyShiftSummary
          : weeklyShiftSummary // ignore: cast_nullable_to_non_nullable
              as WeeklyShiftSummary?,
      todaysShifts: freezed == todaysShifts
          ? _value.todaysShifts
          : todaysShifts // ignore: cast_nullable_to_non_nullable
              as TodaysShifts?,
      globalShiftTime: freezed == globalShiftTime
          ? _value.globalShiftTime
          : globalShiftTime // ignore: cast_nullable_to_non_nullable
              as GlobalShiftTime?,
      shiftResponse: freezed == shiftResponse
          ? _value.shiftResponse
          : shiftResponse // ignore: cast_nullable_to_non_nullable
              as List<TodaysShifts>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeeklyShiftSummaryCopyWith<$Res>? get weeklyShiftSummary {
    if (_value.weeklyShiftSummary == null) {
      return null;
    }

    return $WeeklyShiftSummaryCopyWith<$Res>(_value.weeklyShiftSummary!,
        (value) {
      return _then(_value.copyWith(weeklyShiftSummary: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TodaysShiftsCopyWith<$Res>? get todaysShifts {
    if (_value.todaysShifts == null) {
      return null;
    }

    return $TodaysShiftsCopyWith<$Res>(_value.todaysShifts!, (value) {
      return _then(_value.copyWith(todaysShifts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GlobalShiftTimeCopyWith<$Res>? get globalShiftTime {
    if (_value.globalShiftTime == null) {
      return null;
    }

    return $GlobalShiftTimeCopyWith<$Res>(_value.globalShiftTime!, (value) {
      return _then(_value.copyWith(globalShiftTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeeklyShiftModelImplCopyWith<$Res>
    implements $WeeklyShiftModelCopyWith<$Res> {
  factory _$$WeeklyShiftModelImplCopyWith(_$WeeklyShiftModelImpl value,
          $Res Function(_$WeeklyShiftModelImpl) then) =
      __$$WeeklyShiftModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeeklyShiftSummary? weeklyShiftSummary,
      TodaysShifts? todaysShifts,
      GlobalShiftTime? globalShiftTime,
      List<TodaysShifts>? shiftResponse});

  @override
  $WeeklyShiftSummaryCopyWith<$Res>? get weeklyShiftSummary;
  @override
  $TodaysShiftsCopyWith<$Res>? get todaysShifts;
  @override
  $GlobalShiftTimeCopyWith<$Res>? get globalShiftTime;
}

/// @nodoc
class __$$WeeklyShiftModelImplCopyWithImpl<$Res>
    extends _$WeeklyShiftModelCopyWithImpl<$Res, _$WeeklyShiftModelImpl>
    implements _$$WeeklyShiftModelImplCopyWith<$Res> {
  __$$WeeklyShiftModelImplCopyWithImpl(_$WeeklyShiftModelImpl _value,
      $Res Function(_$WeeklyShiftModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeklyShiftSummary = freezed,
    Object? todaysShifts = freezed,
    Object? globalShiftTime = freezed,
    Object? shiftResponse = freezed,
  }) {
    return _then(_$WeeklyShiftModelImpl(
      weeklyShiftSummary: freezed == weeklyShiftSummary
          ? _value.weeklyShiftSummary
          : weeklyShiftSummary // ignore: cast_nullable_to_non_nullable
              as WeeklyShiftSummary?,
      todaysShifts: freezed == todaysShifts
          ? _value.todaysShifts
          : todaysShifts // ignore: cast_nullable_to_non_nullable
              as TodaysShifts?,
      globalShiftTime: freezed == globalShiftTime
          ? _value.globalShiftTime
          : globalShiftTime // ignore: cast_nullable_to_non_nullable
              as GlobalShiftTime?,
      shiftResponse: freezed == shiftResponse
          ? _value._shiftResponse
          : shiftResponse // ignore: cast_nullable_to_non_nullable
              as List<TodaysShifts>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyShiftModelImpl implements _WeeklyShiftModel {
  const _$WeeklyShiftModelImpl(
      {this.weeklyShiftSummary,
      this.todaysShifts,
      this.globalShiftTime,
      final List<TodaysShifts>? shiftResponse})
      : _shiftResponse = shiftResponse;

  factory _$WeeklyShiftModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyShiftModelImplFromJson(json);

  @override
  final WeeklyShiftSummary? weeklyShiftSummary;
  @override
  final TodaysShifts? todaysShifts;
  @override
  final GlobalShiftTime? globalShiftTime;
  final List<TodaysShifts>? _shiftResponse;
  @override
  List<TodaysShifts>? get shiftResponse {
    final value = _shiftResponse;
    if (value == null) return null;
    if (_shiftResponse is EqualUnmodifiableListView) return _shiftResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeeklyShiftModel(weeklyShiftSummary: $weeklyShiftSummary, todaysShifts: $todaysShifts, globalShiftTime: $globalShiftTime, shiftResponse: $shiftResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyShiftModelImpl &&
            (identical(other.weeklyShiftSummary, weeklyShiftSummary) ||
                other.weeklyShiftSummary == weeklyShiftSummary) &&
            (identical(other.todaysShifts, todaysShifts) ||
                other.todaysShifts == todaysShifts) &&
            (identical(other.globalShiftTime, globalShiftTime) ||
                other.globalShiftTime == globalShiftTime) &&
            const DeepCollectionEquality()
                .equals(other._shiftResponse, _shiftResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, weeklyShiftSummary, todaysShifts,
      globalShiftTime, const DeepCollectionEquality().hash(_shiftResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyShiftModelImplCopyWith<_$WeeklyShiftModelImpl> get copyWith =>
      __$$WeeklyShiftModelImplCopyWithImpl<_$WeeklyShiftModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyShiftModelImplToJson(
      this,
    );
  }
}

abstract class _WeeklyShiftModel implements WeeklyShiftModel {
  const factory _WeeklyShiftModel(
      {final WeeklyShiftSummary? weeklyShiftSummary,
      final TodaysShifts? todaysShifts,
      final GlobalShiftTime? globalShiftTime,
      final List<TodaysShifts>? shiftResponse}) = _$WeeklyShiftModelImpl;

  factory _WeeklyShiftModel.fromJson(Map<String, dynamic> json) =
      _$WeeklyShiftModelImpl.fromJson;

  @override
  WeeklyShiftSummary? get weeklyShiftSummary;
  @override
  TodaysShifts? get todaysShifts;
  @override
  GlobalShiftTime? get globalShiftTime;
  @override
  List<TodaysShifts>? get shiftResponse;
  @override
  @JsonKey(ignore: true)
  _$$WeeklyShiftModelImplCopyWith<_$WeeklyShiftModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GlobalShiftTime _$GlobalShiftTimeFromJson(Map<String, dynamic> json) {
  return _GlobalShiftTime.fromJson(json);
}

/// @nodoc
mixin _$GlobalShiftTime {
  int? get hours => throw _privateConstructorUsedError;
  int? get minutes => throw _privateConstructorUsedError;
  int? get seconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlobalShiftTimeCopyWith<GlobalShiftTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalShiftTimeCopyWith<$Res> {
  factory $GlobalShiftTimeCopyWith(
          GlobalShiftTime value, $Res Function(GlobalShiftTime) then) =
      _$GlobalShiftTimeCopyWithImpl<$Res, GlobalShiftTime>;
  @useResult
  $Res call({int? hours, int? minutes, int? seconds});
}

/// @nodoc
class _$GlobalShiftTimeCopyWithImpl<$Res, $Val extends GlobalShiftTime>
    implements $GlobalShiftTimeCopyWith<$Res> {
  _$GlobalShiftTimeCopyWithImpl(this._value, this._then);

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
abstract class _$$GlobalShiftTimeImplCopyWith<$Res>
    implements $GlobalShiftTimeCopyWith<$Res> {
  factory _$$GlobalShiftTimeImplCopyWith(_$GlobalShiftTimeImpl value,
          $Res Function(_$GlobalShiftTimeImpl) then) =
      __$$GlobalShiftTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? hours, int? minutes, int? seconds});
}

/// @nodoc
class __$$GlobalShiftTimeImplCopyWithImpl<$Res>
    extends _$GlobalShiftTimeCopyWithImpl<$Res, _$GlobalShiftTimeImpl>
    implements _$$GlobalShiftTimeImplCopyWith<$Res> {
  __$$GlobalShiftTimeImplCopyWithImpl(
      _$GlobalShiftTimeImpl _value, $Res Function(_$GlobalShiftTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = freezed,
    Object? minutes = freezed,
    Object? seconds = freezed,
  }) {
    return _then(_$GlobalShiftTimeImpl(
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
class _$GlobalShiftTimeImpl implements _GlobalShiftTime {
  const _$GlobalShiftTimeImpl({this.hours, this.minutes, this.seconds});

  factory _$GlobalShiftTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$GlobalShiftTimeImplFromJson(json);

  @override
  final int? hours;
  @override
  final int? minutes;
  @override
  final int? seconds;

  @override
  String toString() {
    return 'GlobalShiftTime(hours: $hours, minutes: $minutes, seconds: $seconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalShiftTimeImpl &&
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
  _$$GlobalShiftTimeImplCopyWith<_$GlobalShiftTimeImpl> get copyWith =>
      __$$GlobalShiftTimeImplCopyWithImpl<_$GlobalShiftTimeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GlobalShiftTimeImplToJson(
      this,
    );
  }
}

abstract class _GlobalShiftTime implements GlobalShiftTime {
  const factory _GlobalShiftTime(
      {final int? hours,
      final int? minutes,
      final int? seconds}) = _$GlobalShiftTimeImpl;

  factory _GlobalShiftTime.fromJson(Map<String, dynamic> json) =
      _$GlobalShiftTimeImpl.fromJson;

  @override
  int? get hours;
  @override
  int? get minutes;
  @override
  int? get seconds;
  @override
  @JsonKey(ignore: true)
  _$$GlobalShiftTimeImplCopyWith<_$GlobalShiftTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TodaysShifts _$TodaysShiftsFromJson(Map<String, dynamic> json) {
  return _TodaysShifts.fromJson(json);
}

/// @nodoc
mixin _$TodaysShifts {
  String? get day => throw _privateConstructorUsedError;
  GlobalShiftTime? get totalShiftTime => throw _privateConstructorUsedError;
  List<Shift>? get shifts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodaysShiftsCopyWith<TodaysShifts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodaysShiftsCopyWith<$Res> {
  factory $TodaysShiftsCopyWith(
          TodaysShifts value, $Res Function(TodaysShifts) then) =
      _$TodaysShiftsCopyWithImpl<$Res, TodaysShifts>;
  @useResult
  $Res call(
      {String? day, GlobalShiftTime? totalShiftTime, List<Shift>? shifts});

  $GlobalShiftTimeCopyWith<$Res>? get totalShiftTime;
}

/// @nodoc
class _$TodaysShiftsCopyWithImpl<$Res, $Val extends TodaysShifts>
    implements $TodaysShiftsCopyWith<$Res> {
  _$TodaysShiftsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? totalShiftTime = freezed,
    Object? shifts = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShiftTime: freezed == totalShiftTime
          ? _value.totalShiftTime
          : totalShiftTime // ignore: cast_nullable_to_non_nullable
              as GlobalShiftTime?,
      shifts: freezed == shifts
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<Shift>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GlobalShiftTimeCopyWith<$Res>? get totalShiftTime {
    if (_value.totalShiftTime == null) {
      return null;
    }

    return $GlobalShiftTimeCopyWith<$Res>(_value.totalShiftTime!, (value) {
      return _then(_value.copyWith(totalShiftTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TodaysShiftsImplCopyWith<$Res>
    implements $TodaysShiftsCopyWith<$Res> {
  factory _$$TodaysShiftsImplCopyWith(
          _$TodaysShiftsImpl value, $Res Function(_$TodaysShiftsImpl) then) =
      __$$TodaysShiftsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? day, GlobalShiftTime? totalShiftTime, List<Shift>? shifts});

  @override
  $GlobalShiftTimeCopyWith<$Res>? get totalShiftTime;
}

/// @nodoc
class __$$TodaysShiftsImplCopyWithImpl<$Res>
    extends _$TodaysShiftsCopyWithImpl<$Res, _$TodaysShiftsImpl>
    implements _$$TodaysShiftsImplCopyWith<$Res> {
  __$$TodaysShiftsImplCopyWithImpl(
      _$TodaysShiftsImpl _value, $Res Function(_$TodaysShiftsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? totalShiftTime = freezed,
    Object? shifts = freezed,
  }) {
    return _then(_$TodaysShiftsImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShiftTime: freezed == totalShiftTime
          ? _value.totalShiftTime
          : totalShiftTime // ignore: cast_nullable_to_non_nullable
              as GlobalShiftTime?,
      shifts: freezed == shifts
          ? _value._shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<Shift>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodaysShiftsImpl implements _TodaysShifts {
  const _$TodaysShiftsImpl(
      {this.day, this.totalShiftTime, final List<Shift>? shifts})
      : _shifts = shifts;

  factory _$TodaysShiftsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodaysShiftsImplFromJson(json);

  @override
  final String? day;
  @override
  final GlobalShiftTime? totalShiftTime;
  final List<Shift>? _shifts;
  @override
  List<Shift>? get shifts {
    final value = _shifts;
    if (value == null) return null;
    if (_shifts is EqualUnmodifiableListView) return _shifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodaysShifts(day: $day, totalShiftTime: $totalShiftTime, shifts: $shifts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodaysShiftsImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.totalShiftTime, totalShiftTime) ||
                other.totalShiftTime == totalShiftTime) &&
            const DeepCollectionEquality().equals(other._shifts, _shifts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, totalShiftTime,
      const DeepCollectionEquality().hash(_shifts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodaysShiftsImplCopyWith<_$TodaysShiftsImpl> get copyWith =>
      __$$TodaysShiftsImplCopyWithImpl<_$TodaysShiftsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodaysShiftsImplToJson(
      this,
    );
  }
}

abstract class _TodaysShifts implements TodaysShifts {
  const factory _TodaysShifts(
      {final String? day,
      final GlobalShiftTime? totalShiftTime,
      final List<Shift>? shifts}) = _$TodaysShiftsImpl;

  factory _TodaysShifts.fromJson(Map<String, dynamic> json) =
      _$TodaysShiftsImpl.fromJson;

  @override
  String? get day;
  @override
  GlobalShiftTime? get totalShiftTime;
  @override
  List<Shift>? get shifts;
  @override
  @JsonKey(ignore: true)
  _$$TodaysShiftsImplCopyWith<_$TodaysShiftsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get colorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call({int? id, String? name, String? colorCode});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? colorCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? colorCode});
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
      _$ProjectImpl _value, $Res Function(_$ProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? colorCode = freezed,
  }) {
    return _then(_$ProjectImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl({this.id, this.name, this.colorCode});

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? colorCode;

  @override
  String toString() {
    return 'Project(id: $id, name: $name, colorCode: $colorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, colorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
      {final int? id,
      final String? name,
      final String? colorCode}) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get colorCode;
  @override
  @JsonKey(ignore: true)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeeklyShiftSummary _$WeeklyShiftSummaryFromJson(Map<String, dynamic> json) {
  return _WeeklyShiftSummary.fromJson(json);
}

/// @nodoc
mixin _$WeeklyShiftSummary {
  String? get weekStart => throw _privateConstructorUsedError;
  String? get weekEnd => throw _privateConstructorUsedError;
  int? get totalTargetHours => throw _privateConstructorUsedError;
  double? get totalHoursWorked => throw _privateConstructorUsedError;
  AverageWorkingHoursPerDay? get averageWorkingHoursPerDay =>
      throw _privateConstructorUsedError;
  int? get percentage => throw _privateConstructorUsedError;
  int? get hoursWorkedOvertime => throw _privateConstructorUsedError;
  GlobalShiftTime? get totalHoursWorkedInHoursMinutes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyShiftSummaryCopyWith<WeeklyShiftSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyShiftSummaryCopyWith<$Res> {
  factory $WeeklyShiftSummaryCopyWith(
          WeeklyShiftSummary value, $Res Function(WeeklyShiftSummary) then) =
      _$WeeklyShiftSummaryCopyWithImpl<$Res, WeeklyShiftSummary>;
  @useResult
  $Res call(
      {String? weekStart,
      String? weekEnd,
      int? totalTargetHours,
      double? totalHoursWorked,
      AverageWorkingHoursPerDay? averageWorkingHoursPerDay,
      int? percentage,
      int? hoursWorkedOvertime,
      GlobalShiftTime? totalHoursWorkedInHoursMinutes});

  $AverageWorkingHoursPerDayCopyWith<$Res>? get averageWorkingHoursPerDay;
  $GlobalShiftTimeCopyWith<$Res>? get totalHoursWorkedInHoursMinutes;
}

/// @nodoc
class _$WeeklyShiftSummaryCopyWithImpl<$Res, $Val extends WeeklyShiftSummary>
    implements $WeeklyShiftSummaryCopyWith<$Res> {
  _$WeeklyShiftSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekStart = freezed,
    Object? weekEnd = freezed,
    Object? totalTargetHours = freezed,
    Object? totalHoursWorked = freezed,
    Object? averageWorkingHoursPerDay = freezed,
    Object? percentage = freezed,
    Object? hoursWorkedOvertime = freezed,
    Object? totalHoursWorkedInHoursMinutes = freezed,
  }) {
    return _then(_value.copyWith(
      weekStart: freezed == weekStart
          ? _value.weekStart
          : weekStart // ignore: cast_nullable_to_non_nullable
              as String?,
      weekEnd: freezed == weekEnd
          ? _value.weekEnd
          : weekEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTargetHours: freezed == totalTargetHours
          ? _value.totalTargetHours
          : totalTargetHours // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHoursWorked: freezed == totalHoursWorked
          ? _value.totalHoursWorked
          : totalHoursWorked // ignore: cast_nullable_to_non_nullable
              as double?,
      averageWorkingHoursPerDay: freezed == averageWorkingHoursPerDay
          ? _value.averageWorkingHoursPerDay
          : averageWorkingHoursPerDay // ignore: cast_nullable_to_non_nullable
              as AverageWorkingHoursPerDay?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      hoursWorkedOvertime: freezed == hoursWorkedOvertime
          ? _value.hoursWorkedOvertime
          : hoursWorkedOvertime // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHoursWorkedInHoursMinutes: freezed == totalHoursWorkedInHoursMinutes
          ? _value.totalHoursWorkedInHoursMinutes
          : totalHoursWorkedInHoursMinutes // ignore: cast_nullable_to_non_nullable
              as GlobalShiftTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AverageWorkingHoursPerDayCopyWith<$Res>? get averageWorkingHoursPerDay {
    if (_value.averageWorkingHoursPerDay == null) {
      return null;
    }

    return $AverageWorkingHoursPerDayCopyWith<$Res>(
        _value.averageWorkingHoursPerDay!, (value) {
      return _then(_value.copyWith(averageWorkingHoursPerDay: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GlobalShiftTimeCopyWith<$Res>? get totalHoursWorkedInHoursMinutes {
    if (_value.totalHoursWorkedInHoursMinutes == null) {
      return null;
    }

    return $GlobalShiftTimeCopyWith<$Res>(
        _value.totalHoursWorkedInHoursMinutes!, (value) {
      return _then(
          _value.copyWith(totalHoursWorkedInHoursMinutes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeeklyShiftSummaryImplCopyWith<$Res>
    implements $WeeklyShiftSummaryCopyWith<$Res> {
  factory _$$WeeklyShiftSummaryImplCopyWith(_$WeeklyShiftSummaryImpl value,
          $Res Function(_$WeeklyShiftSummaryImpl) then) =
      __$$WeeklyShiftSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? weekStart,
      String? weekEnd,
      int? totalTargetHours,
      double? totalHoursWorked,
      AverageWorkingHoursPerDay? averageWorkingHoursPerDay,
      int? percentage,
      int? hoursWorkedOvertime,
      GlobalShiftTime? totalHoursWorkedInHoursMinutes});

  @override
  $AverageWorkingHoursPerDayCopyWith<$Res>? get averageWorkingHoursPerDay;
  @override
  $GlobalShiftTimeCopyWith<$Res>? get totalHoursWorkedInHoursMinutes;
}

/// @nodoc
class __$$WeeklyShiftSummaryImplCopyWithImpl<$Res>
    extends _$WeeklyShiftSummaryCopyWithImpl<$Res, _$WeeklyShiftSummaryImpl>
    implements _$$WeeklyShiftSummaryImplCopyWith<$Res> {
  __$$WeeklyShiftSummaryImplCopyWithImpl(_$WeeklyShiftSummaryImpl _value,
      $Res Function(_$WeeklyShiftSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekStart = freezed,
    Object? weekEnd = freezed,
    Object? totalTargetHours = freezed,
    Object? totalHoursWorked = freezed,
    Object? averageWorkingHoursPerDay = freezed,
    Object? percentage = freezed,
    Object? hoursWorkedOvertime = freezed,
    Object? totalHoursWorkedInHoursMinutes = freezed,
  }) {
    return _then(_$WeeklyShiftSummaryImpl(
      weekStart: freezed == weekStart
          ? _value.weekStart
          : weekStart // ignore: cast_nullable_to_non_nullable
              as String?,
      weekEnd: freezed == weekEnd
          ? _value.weekEnd
          : weekEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTargetHours: freezed == totalTargetHours
          ? _value.totalTargetHours
          : totalTargetHours // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHoursWorked: freezed == totalHoursWorked
          ? _value.totalHoursWorked
          : totalHoursWorked // ignore: cast_nullable_to_non_nullable
              as double?,
      averageWorkingHoursPerDay: freezed == averageWorkingHoursPerDay
          ? _value.averageWorkingHoursPerDay
          : averageWorkingHoursPerDay // ignore: cast_nullable_to_non_nullable
              as AverageWorkingHoursPerDay?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      hoursWorkedOvertime: freezed == hoursWorkedOvertime
          ? _value.hoursWorkedOvertime
          : hoursWorkedOvertime // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHoursWorkedInHoursMinutes: freezed == totalHoursWorkedInHoursMinutes
          ? _value.totalHoursWorkedInHoursMinutes
          : totalHoursWorkedInHoursMinutes // ignore: cast_nullable_to_non_nullable
              as GlobalShiftTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyShiftSummaryImpl implements _WeeklyShiftSummary {
  const _$WeeklyShiftSummaryImpl(
      {this.weekStart,
      this.weekEnd,
      this.totalTargetHours,
      this.totalHoursWorked,
      this.averageWorkingHoursPerDay,
      this.percentage,
      this.hoursWorkedOvertime,
      this.totalHoursWorkedInHoursMinutes});

  factory _$WeeklyShiftSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyShiftSummaryImplFromJson(json);

  @override
  final String? weekStart;
  @override
  final String? weekEnd;
  @override
  final int? totalTargetHours;
  @override
  final double? totalHoursWorked;
  @override
  final AverageWorkingHoursPerDay? averageWorkingHoursPerDay;
  @override
  final int? percentage;
  @override
  final int? hoursWorkedOvertime;
  @override
  final GlobalShiftTime? totalHoursWorkedInHoursMinutes;

  @override
  String toString() {
    return 'WeeklyShiftSummary(weekStart: $weekStart, weekEnd: $weekEnd, totalTargetHours: $totalTargetHours, totalHoursWorked: $totalHoursWorked, averageWorkingHoursPerDay: $averageWorkingHoursPerDay, percentage: $percentage, hoursWorkedOvertime: $hoursWorkedOvertime, totalHoursWorkedInHoursMinutes: $totalHoursWorkedInHoursMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyShiftSummaryImpl &&
            (identical(other.weekStart, weekStart) ||
                other.weekStart == weekStart) &&
            (identical(other.weekEnd, weekEnd) || other.weekEnd == weekEnd) &&
            (identical(other.totalTargetHours, totalTargetHours) ||
                other.totalTargetHours == totalTargetHours) &&
            (identical(other.totalHoursWorked, totalHoursWorked) ||
                other.totalHoursWorked == totalHoursWorked) &&
            (identical(other.averageWorkingHoursPerDay,
                    averageWorkingHoursPerDay) ||
                other.averageWorkingHoursPerDay == averageWorkingHoursPerDay) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.hoursWorkedOvertime, hoursWorkedOvertime) ||
                other.hoursWorkedOvertime == hoursWorkedOvertime) &&
            (identical(other.totalHoursWorkedInHoursMinutes,
                    totalHoursWorkedInHoursMinutes) ||
                other.totalHoursWorkedInHoursMinutes ==
                    totalHoursWorkedInHoursMinutes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      weekStart,
      weekEnd,
      totalTargetHours,
      totalHoursWorked,
      averageWorkingHoursPerDay,
      percentage,
      hoursWorkedOvertime,
      totalHoursWorkedInHoursMinutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyShiftSummaryImplCopyWith<_$WeeklyShiftSummaryImpl> get copyWith =>
      __$$WeeklyShiftSummaryImplCopyWithImpl<_$WeeklyShiftSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyShiftSummaryImplToJson(
      this,
    );
  }
}

abstract class _WeeklyShiftSummary implements WeeklyShiftSummary {
  const factory _WeeklyShiftSummary(
          {final String? weekStart,
          final String? weekEnd,
          final int? totalTargetHours,
          final double? totalHoursWorked,
          final AverageWorkingHoursPerDay? averageWorkingHoursPerDay,
          final int? percentage,
          final int? hoursWorkedOvertime,
          final GlobalShiftTime? totalHoursWorkedInHoursMinutes}) =
      _$WeeklyShiftSummaryImpl;

  factory _WeeklyShiftSummary.fromJson(Map<String, dynamic> json) =
      _$WeeklyShiftSummaryImpl.fromJson;

  @override
  String? get weekStart;
  @override
  String? get weekEnd;
  @override
  int? get totalTargetHours;
  @override
  double? get totalHoursWorked;
  @override
  AverageWorkingHoursPerDay? get averageWorkingHoursPerDay;
  @override
  int? get percentage;
  @override
  int? get hoursWorkedOvertime;
  @override
  GlobalShiftTime? get totalHoursWorkedInHoursMinutes;
  @override
  @JsonKey(ignore: true)
  _$$WeeklyShiftSummaryImplCopyWith<_$WeeklyShiftSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AverageWorkingHoursPerDay _$AverageWorkingHoursPerDayFromJson(
    Map<String, dynamic> json) {
  return _AverageWorkingHoursPerDay.fromJson(json);
}

/// @nodoc
mixin _$AverageWorkingHoursPerDay {
  int? get hours => throw _privateConstructorUsedError;
  int? get minutes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AverageWorkingHoursPerDayCopyWith<AverageWorkingHoursPerDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AverageWorkingHoursPerDayCopyWith<$Res> {
  factory $AverageWorkingHoursPerDayCopyWith(AverageWorkingHoursPerDay value,
          $Res Function(AverageWorkingHoursPerDay) then) =
      _$AverageWorkingHoursPerDayCopyWithImpl<$Res, AverageWorkingHoursPerDay>;
  @useResult
  $Res call({int? hours, int? minutes});
}

/// @nodoc
class _$AverageWorkingHoursPerDayCopyWithImpl<$Res,
        $Val extends AverageWorkingHoursPerDay>
    implements $AverageWorkingHoursPerDayCopyWith<$Res> {
  _$AverageWorkingHoursPerDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = freezed,
    Object? minutes = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AverageWorkingHoursPerDayImplCopyWith<$Res>
    implements $AverageWorkingHoursPerDayCopyWith<$Res> {
  factory _$$AverageWorkingHoursPerDayImplCopyWith(
          _$AverageWorkingHoursPerDayImpl value,
          $Res Function(_$AverageWorkingHoursPerDayImpl) then) =
      __$$AverageWorkingHoursPerDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? hours, int? minutes});
}

/// @nodoc
class __$$AverageWorkingHoursPerDayImplCopyWithImpl<$Res>
    extends _$AverageWorkingHoursPerDayCopyWithImpl<$Res,
        _$AverageWorkingHoursPerDayImpl>
    implements _$$AverageWorkingHoursPerDayImplCopyWith<$Res> {
  __$$AverageWorkingHoursPerDayImplCopyWithImpl(
      _$AverageWorkingHoursPerDayImpl _value,
      $Res Function(_$AverageWorkingHoursPerDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = freezed,
    Object? minutes = freezed,
  }) {
    return _then(_$AverageWorkingHoursPerDayImpl(
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AverageWorkingHoursPerDayImpl implements _AverageWorkingHoursPerDay {
  const _$AverageWorkingHoursPerDayImpl({this.hours, this.minutes});

  factory _$AverageWorkingHoursPerDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$AverageWorkingHoursPerDayImplFromJson(json);

  @override
  final int? hours;
  @override
  final int? minutes;

  @override
  String toString() {
    return 'AverageWorkingHoursPerDay(hours: $hours, minutes: $minutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AverageWorkingHoursPerDayImpl &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hours, minutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AverageWorkingHoursPerDayImplCopyWith<_$AverageWorkingHoursPerDayImpl>
      get copyWith => __$$AverageWorkingHoursPerDayImplCopyWithImpl<
          _$AverageWorkingHoursPerDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AverageWorkingHoursPerDayImplToJson(
      this,
    );
  }
}

abstract class _AverageWorkingHoursPerDay implements AverageWorkingHoursPerDay {
  const factory _AverageWorkingHoursPerDay(
      {final int? hours, final int? minutes}) = _$AverageWorkingHoursPerDayImpl;

  factory _AverageWorkingHoursPerDay.fromJson(Map<String, dynamic> json) =
      _$AverageWorkingHoursPerDayImpl.fromJson;

  @override
  int? get hours;
  @override
  int? get minutes;
  @override
  @JsonKey(ignore: true)
  _$$AverageWorkingHoursPerDayImplCopyWith<_$AverageWorkingHoursPerDayImpl>
      get copyWith => throw _privateConstructorUsedError;
}
