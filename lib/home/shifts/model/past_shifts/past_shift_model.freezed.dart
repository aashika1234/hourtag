// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'past_shift_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PastShiftModel _$PastShiftModelFromJson(Map<String, dynamic> json) {
  return _PastShiftModel.fromJson(json);
}

/// @nodoc
mixin _$PastShiftModel {
  Time? get globalShiftTime => throw _privateConstructorUsedError;
  List<Project>? get projects => throw _privateConstructorUsedError;
  List<ShiftsByWeek>? get shiftsByWeek => throw _privateConstructorUsedError;
  PastShiftModelUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PastShiftModelCopyWith<PastShiftModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PastShiftModelCopyWith<$Res> {
  factory $PastShiftModelCopyWith(
          PastShiftModel value, $Res Function(PastShiftModel) then) =
      _$PastShiftModelCopyWithImpl<$Res, PastShiftModel>;
  @useResult
  $Res call(
      {Time? globalShiftTime,
      List<Project>? projects,
      List<ShiftsByWeek>? shiftsByWeek,
      PastShiftModelUser? user});

  $TimeCopyWith<$Res>? get globalShiftTime;
  $PastShiftModelUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$PastShiftModelCopyWithImpl<$Res, $Val extends PastShiftModel>
    implements $PastShiftModelCopyWith<$Res> {
  _$PastShiftModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? globalShiftTime = freezed,
    Object? projects = freezed,
    Object? shiftsByWeek = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      globalShiftTime: freezed == globalShiftTime
          ? _value.globalShiftTime
          : globalShiftTime // ignore: cast_nullable_to_non_nullable
              as Time?,
      projects: freezed == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>?,
      shiftsByWeek: freezed == shiftsByWeek
          ? _value.shiftsByWeek
          : shiftsByWeek // ignore: cast_nullable_to_non_nullable
              as List<ShiftsByWeek>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as PastShiftModelUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get globalShiftTime {
    if (_value.globalShiftTime == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.globalShiftTime!, (value) {
      return _then(_value.copyWith(globalShiftTime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PastShiftModelUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $PastShiftModelUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PastShiftModelImplCopyWith<$Res>
    implements $PastShiftModelCopyWith<$Res> {
  factory _$$PastShiftModelImplCopyWith(_$PastShiftModelImpl value,
          $Res Function(_$PastShiftModelImpl) then) =
      __$$PastShiftModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Time? globalShiftTime,
      List<Project>? projects,
      List<ShiftsByWeek>? shiftsByWeek,
      PastShiftModelUser? user});

  @override
  $TimeCopyWith<$Res>? get globalShiftTime;
  @override
  $PastShiftModelUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$PastShiftModelImplCopyWithImpl<$Res>
    extends _$PastShiftModelCopyWithImpl<$Res, _$PastShiftModelImpl>
    implements _$$PastShiftModelImplCopyWith<$Res> {
  __$$PastShiftModelImplCopyWithImpl(
      _$PastShiftModelImpl _value, $Res Function(_$PastShiftModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? globalShiftTime = freezed,
    Object? projects = freezed,
    Object? shiftsByWeek = freezed,
    Object? user = freezed,
  }) {
    return _then(_$PastShiftModelImpl(
      globalShiftTime: freezed == globalShiftTime
          ? _value.globalShiftTime
          : globalShiftTime // ignore: cast_nullable_to_non_nullable
              as Time?,
      projects: freezed == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>?,
      shiftsByWeek: freezed == shiftsByWeek
          ? _value._shiftsByWeek
          : shiftsByWeek // ignore: cast_nullable_to_non_nullable
              as List<ShiftsByWeek>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as PastShiftModelUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PastShiftModelImpl implements _PastShiftModel {
  const _$PastShiftModelImpl(
      {this.globalShiftTime,
      final List<Project>? projects,
      final List<ShiftsByWeek>? shiftsByWeek,
      this.user})
      : _projects = projects,
        _shiftsByWeek = shiftsByWeek;

  factory _$PastShiftModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PastShiftModelImplFromJson(json);

  @override
  final Time? globalShiftTime;
  final List<Project>? _projects;
  @override
  List<Project>? get projects {
    final value = _projects;
    if (value == null) return null;
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ShiftsByWeek>? _shiftsByWeek;
  @override
  List<ShiftsByWeek>? get shiftsByWeek {
    final value = _shiftsByWeek;
    if (value == null) return null;
    if (_shiftsByWeek is EqualUnmodifiableListView) return _shiftsByWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PastShiftModelUser? user;

  @override
  String toString() {
    return 'PastShiftModel(globalShiftTime: $globalShiftTime, projects: $projects, shiftsByWeek: $shiftsByWeek, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PastShiftModelImpl &&
            (identical(other.globalShiftTime, globalShiftTime) ||
                other.globalShiftTime == globalShiftTime) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            const DeepCollectionEquality()
                .equals(other._shiftsByWeek, _shiftsByWeek) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      globalShiftTime,
      const DeepCollectionEquality().hash(_projects),
      const DeepCollectionEquality().hash(_shiftsByWeek),
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PastShiftModelImplCopyWith<_$PastShiftModelImpl> get copyWith =>
      __$$PastShiftModelImplCopyWithImpl<_$PastShiftModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PastShiftModelImplToJson(
      this,
    );
  }
}

abstract class _PastShiftModel implements PastShiftModel {
  const factory _PastShiftModel(
      {final Time? globalShiftTime,
      final List<Project>? projects,
      final List<ShiftsByWeek>? shiftsByWeek,
      final PastShiftModelUser? user}) = _$PastShiftModelImpl;

  factory _PastShiftModel.fromJson(Map<String, dynamic> json) =
      _$PastShiftModelImpl.fromJson;

  @override
  Time? get globalShiftTime;
  @override
  List<Project>? get projects;
  @override
  List<ShiftsByWeek>? get shiftsByWeek;
  @override
  PastShiftModelUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$PastShiftModelImplCopyWith<_$PastShiftModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Time _$TimeFromJson(Map<String, dynamic> json) {
  return _Time.fromJson(json);
}

/// @nodoc
mixin _$Time {
  int? get hours => throw _privateConstructorUsedError;
  int? get minutes => throw _privateConstructorUsedError;
  int? get seconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeCopyWith<Time> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCopyWith<$Res> {
  factory $TimeCopyWith(Time value, $Res Function(Time) then) =
      _$TimeCopyWithImpl<$Res, Time>;
  @useResult
  $Res call({int? hours, int? minutes, int? seconds});
}

/// @nodoc
class _$TimeCopyWithImpl<$Res, $Val extends Time>
    implements $TimeCopyWith<$Res> {
  _$TimeCopyWithImpl(this._value, this._then);

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
abstract class _$$TimeImplCopyWith<$Res> implements $TimeCopyWith<$Res> {
  factory _$$TimeImplCopyWith(
          _$TimeImpl value, $Res Function(_$TimeImpl) then) =
      __$$TimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? hours, int? minutes, int? seconds});
}

/// @nodoc
class __$$TimeImplCopyWithImpl<$Res>
    extends _$TimeCopyWithImpl<$Res, _$TimeImpl>
    implements _$$TimeImplCopyWith<$Res> {
  __$$TimeImplCopyWithImpl(_$TimeImpl _value, $Res Function(_$TimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = freezed,
    Object? minutes = freezed,
    Object? seconds = freezed,
  }) {
    return _then(_$TimeImpl(
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
class _$TimeImpl implements _Time {
  const _$TimeImpl({this.hours, this.minutes, this.seconds});

  factory _$TimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeImplFromJson(json);

  @override
  final int? hours;
  @override
  final int? minutes;
  @override
  final int? seconds;

  @override
  String toString() {
    return 'Time(hours: $hours, minutes: $minutes, seconds: $seconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeImpl &&
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
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      __$$TimeImplCopyWithImpl<_$TimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeImplToJson(
      this,
    );
  }
}

abstract class _Time implements Time {
  const factory _Time(
      {final int? hours, final int? minutes, final int? seconds}) = _$TimeImpl;

  factory _Time.fromJson(Map<String, dynamic> json) = _$TimeImpl.fromJson;

  @override
  int? get hours;
  @override
  int? get minutes;
  @override
  int? get seconds;
  @override
  @JsonKey(ignore: true)
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
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
  Time? get totalShiftTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call({int? id, String? name, String? colorCode, Time? totalShiftTime});

  $TimeCopyWith<$Res>? get totalShiftTime;
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
    Object? totalShiftTime = freezed,
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
      totalShiftTime: freezed == totalShiftTime
          ? _value.totalShiftTime
          : totalShiftTime // ignore: cast_nullable_to_non_nullable
              as Time?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get totalShiftTime {
    if (_value.totalShiftTime == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.totalShiftTime!, (value) {
      return _then(_value.copyWith(totalShiftTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? colorCode, Time? totalShiftTime});

  @override
  $TimeCopyWith<$Res>? get totalShiftTime;
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
    Object? totalShiftTime = freezed,
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
      totalShiftTime: freezed == totalShiftTime
          ? _value.totalShiftTime
          : totalShiftTime // ignore: cast_nullable_to_non_nullable
              as Time?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {this.id, this.name, this.colorCode, this.totalShiftTime});

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? colorCode;
  @override
  final Time? totalShiftTime;

  @override
  String toString() {
    return 'Project(id: $id, name: $name, colorCode: $colorCode, totalShiftTime: $totalShiftTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.totalShiftTime, totalShiftTime) ||
                other.totalShiftTime == totalShiftTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, colorCode, totalShiftTime);

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
      final String? colorCode,
      final Time? totalShiftTime}) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get colorCode;
  @override
  Time? get totalShiftTime;
  @override
  @JsonKey(ignore: true)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShiftsByWeek _$ShiftsByWeekFromJson(Map<String, dynamic> json) {
  return _ShiftsByWeek.fromJson(json);
}

/// @nodoc
mixin _$ShiftsByWeek {
  DateTime? get weekStart => throw _privateConstructorUsedError;
  DateTime? get weekEnd => throw _privateConstructorUsedError;
  List<ShiftsByDay>? get shiftsByDay => throw _privateConstructorUsedError;
  Time? get totalWeekTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftsByWeekCopyWith<ShiftsByWeek> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftsByWeekCopyWith<$Res> {
  factory $ShiftsByWeekCopyWith(
          ShiftsByWeek value, $Res Function(ShiftsByWeek) then) =
      _$ShiftsByWeekCopyWithImpl<$Res, ShiftsByWeek>;
  @useResult
  $Res call(
      {DateTime? weekStart,
      DateTime? weekEnd,
      List<ShiftsByDay>? shiftsByDay,
      Time? totalWeekTime});

  $TimeCopyWith<$Res>? get totalWeekTime;
}

/// @nodoc
class _$ShiftsByWeekCopyWithImpl<$Res, $Val extends ShiftsByWeek>
    implements $ShiftsByWeekCopyWith<$Res> {
  _$ShiftsByWeekCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekStart = freezed,
    Object? weekEnd = freezed,
    Object? shiftsByDay = freezed,
    Object? totalWeekTime = freezed,
  }) {
    return _then(_value.copyWith(
      weekStart: freezed == weekStart
          ? _value.weekStart
          : weekStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weekEnd: freezed == weekEnd
          ? _value.weekEnd
          : weekEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shiftsByDay: freezed == shiftsByDay
          ? _value.shiftsByDay
          : shiftsByDay // ignore: cast_nullable_to_non_nullable
              as List<ShiftsByDay>?,
      totalWeekTime: freezed == totalWeekTime
          ? _value.totalWeekTime
          : totalWeekTime // ignore: cast_nullable_to_non_nullable
              as Time?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get totalWeekTime {
    if (_value.totalWeekTime == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.totalWeekTime!, (value) {
      return _then(_value.copyWith(totalWeekTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShiftsByWeekImplCopyWith<$Res>
    implements $ShiftsByWeekCopyWith<$Res> {
  factory _$$ShiftsByWeekImplCopyWith(
          _$ShiftsByWeekImpl value, $Res Function(_$ShiftsByWeekImpl) then) =
      __$$ShiftsByWeekImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? weekStart,
      DateTime? weekEnd,
      List<ShiftsByDay>? shiftsByDay,
      Time? totalWeekTime});

  @override
  $TimeCopyWith<$Res>? get totalWeekTime;
}

/// @nodoc
class __$$ShiftsByWeekImplCopyWithImpl<$Res>
    extends _$ShiftsByWeekCopyWithImpl<$Res, _$ShiftsByWeekImpl>
    implements _$$ShiftsByWeekImplCopyWith<$Res> {
  __$$ShiftsByWeekImplCopyWithImpl(
      _$ShiftsByWeekImpl _value, $Res Function(_$ShiftsByWeekImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekStart = freezed,
    Object? weekEnd = freezed,
    Object? shiftsByDay = freezed,
    Object? totalWeekTime = freezed,
  }) {
    return _then(_$ShiftsByWeekImpl(
      weekStart: freezed == weekStart
          ? _value.weekStart
          : weekStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weekEnd: freezed == weekEnd
          ? _value.weekEnd
          : weekEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shiftsByDay: freezed == shiftsByDay
          ? _value._shiftsByDay
          : shiftsByDay // ignore: cast_nullable_to_non_nullable
              as List<ShiftsByDay>?,
      totalWeekTime: freezed == totalWeekTime
          ? _value.totalWeekTime
          : totalWeekTime // ignore: cast_nullable_to_non_nullable
              as Time?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftsByWeekImpl implements _ShiftsByWeek {
  const _$ShiftsByWeekImpl(
      {this.weekStart,
      this.weekEnd,
      final List<ShiftsByDay>? shiftsByDay,
      this.totalWeekTime})
      : _shiftsByDay = shiftsByDay;

  factory _$ShiftsByWeekImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftsByWeekImplFromJson(json);

  @override
  final DateTime? weekStart;
  @override
  final DateTime? weekEnd;
  final List<ShiftsByDay>? _shiftsByDay;
  @override
  List<ShiftsByDay>? get shiftsByDay {
    final value = _shiftsByDay;
    if (value == null) return null;
    if (_shiftsByDay is EqualUnmodifiableListView) return _shiftsByDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Time? totalWeekTime;

  @override
  String toString() {
    return 'ShiftsByWeek(weekStart: $weekStart, weekEnd: $weekEnd, shiftsByDay: $shiftsByDay, totalWeekTime: $totalWeekTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftsByWeekImpl &&
            (identical(other.weekStart, weekStart) ||
                other.weekStart == weekStart) &&
            (identical(other.weekEnd, weekEnd) || other.weekEnd == weekEnd) &&
            const DeepCollectionEquality()
                .equals(other._shiftsByDay, _shiftsByDay) &&
            (identical(other.totalWeekTime, totalWeekTime) ||
                other.totalWeekTime == totalWeekTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, weekStart, weekEnd,
      const DeepCollectionEquality().hash(_shiftsByDay), totalWeekTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftsByWeekImplCopyWith<_$ShiftsByWeekImpl> get copyWith =>
      __$$ShiftsByWeekImplCopyWithImpl<_$ShiftsByWeekImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftsByWeekImplToJson(
      this,
    );
  }
}

abstract class _ShiftsByWeek implements ShiftsByWeek {
  const factory _ShiftsByWeek(
      {final DateTime? weekStart,
      final DateTime? weekEnd,
      final List<ShiftsByDay>? shiftsByDay,
      final Time? totalWeekTime}) = _$ShiftsByWeekImpl;

  factory _ShiftsByWeek.fromJson(Map<String, dynamic> json) =
      _$ShiftsByWeekImpl.fromJson;

  @override
  DateTime? get weekStart;
  @override
  DateTime? get weekEnd;
  @override
  List<ShiftsByDay>? get shiftsByDay;
  @override
  Time? get totalWeekTime;
  @override
  @JsonKey(ignore: true)
  _$$ShiftsByWeekImplCopyWith<_$ShiftsByWeekImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShiftsByDay _$ShiftsByDayFromJson(Map<String, dynamic> json) {
  return _ShiftsByDay.fromJson(json);
}

/// @nodoc
mixin _$ShiftsByDay {
  DateTime? get dayStart => throw _privateConstructorUsedError;
  Time? get totalDayTime => throw _privateConstructorUsedError;
  DateTime? get dayEnd => throw _privateConstructorUsedError;
  List<Shift>? get shifts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftsByDayCopyWith<ShiftsByDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftsByDayCopyWith<$Res> {
  factory $ShiftsByDayCopyWith(
          ShiftsByDay value, $Res Function(ShiftsByDay) then) =
      _$ShiftsByDayCopyWithImpl<$Res, ShiftsByDay>;
  @useResult
  $Res call(
      {DateTime? dayStart,
      Time? totalDayTime,
      DateTime? dayEnd,
      List<Shift>? shifts});

  $TimeCopyWith<$Res>? get totalDayTime;
}

/// @nodoc
class _$ShiftsByDayCopyWithImpl<$Res, $Val extends ShiftsByDay>
    implements $ShiftsByDayCopyWith<$Res> {
  _$ShiftsByDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayStart = freezed,
    Object? totalDayTime = freezed,
    Object? dayEnd = freezed,
    Object? shifts = freezed,
  }) {
    return _then(_value.copyWith(
      dayStart: freezed == dayStart
          ? _value.dayStart
          : dayStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalDayTime: freezed == totalDayTime
          ? _value.totalDayTime
          : totalDayTime // ignore: cast_nullable_to_non_nullable
              as Time?,
      dayEnd: freezed == dayEnd
          ? _value.dayEnd
          : dayEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shifts: freezed == shifts
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<Shift>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get totalDayTime {
    if (_value.totalDayTime == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.totalDayTime!, (value) {
      return _then(_value.copyWith(totalDayTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShiftsByDayImplCopyWith<$Res>
    implements $ShiftsByDayCopyWith<$Res> {
  factory _$$ShiftsByDayImplCopyWith(
          _$ShiftsByDayImpl value, $Res Function(_$ShiftsByDayImpl) then) =
      __$$ShiftsByDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? dayStart,
      Time? totalDayTime,
      DateTime? dayEnd,
      List<Shift>? shifts});

  @override
  $TimeCopyWith<$Res>? get totalDayTime;
}

/// @nodoc
class __$$ShiftsByDayImplCopyWithImpl<$Res>
    extends _$ShiftsByDayCopyWithImpl<$Res, _$ShiftsByDayImpl>
    implements _$$ShiftsByDayImplCopyWith<$Res> {
  __$$ShiftsByDayImplCopyWithImpl(
      _$ShiftsByDayImpl _value, $Res Function(_$ShiftsByDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayStart = freezed,
    Object? totalDayTime = freezed,
    Object? dayEnd = freezed,
    Object? shifts = freezed,
  }) {
    return _then(_$ShiftsByDayImpl(
      dayStart: freezed == dayStart
          ? _value.dayStart
          : dayStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalDayTime: freezed == totalDayTime
          ? _value.totalDayTime
          : totalDayTime // ignore: cast_nullable_to_non_nullable
              as Time?,
      dayEnd: freezed == dayEnd
          ? _value.dayEnd
          : dayEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shifts: freezed == shifts
          ? _value._shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<Shift>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftsByDayImpl implements _ShiftsByDay {
  const _$ShiftsByDayImpl(
      {this.dayStart,
      this.totalDayTime,
      this.dayEnd,
      final List<Shift>? shifts})
      : _shifts = shifts;

  factory _$ShiftsByDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftsByDayImplFromJson(json);

  @override
  final DateTime? dayStart;
  @override
  final Time? totalDayTime;
  @override
  final DateTime? dayEnd;
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
    return 'ShiftsByDay(dayStart: $dayStart, totalDayTime: $totalDayTime, dayEnd: $dayEnd, shifts: $shifts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftsByDayImpl &&
            (identical(other.dayStart, dayStart) ||
                other.dayStart == dayStart) &&
            (identical(other.totalDayTime, totalDayTime) ||
                other.totalDayTime == totalDayTime) &&
            (identical(other.dayEnd, dayEnd) || other.dayEnd == dayEnd) &&
            const DeepCollectionEquality().equals(other._shifts, _shifts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dayStart, totalDayTime, dayEnd,
      const DeepCollectionEquality().hash(_shifts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftsByDayImplCopyWith<_$ShiftsByDayImpl> get copyWith =>
      __$$ShiftsByDayImplCopyWithImpl<_$ShiftsByDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftsByDayImplToJson(
      this,
    );
  }
}

abstract class _ShiftsByDay implements ShiftsByDay {
  const factory _ShiftsByDay(
      {final DateTime? dayStart,
      final Time? totalDayTime,
      final DateTime? dayEnd,
      final List<Shift>? shifts}) = _$ShiftsByDayImpl;

  factory _ShiftsByDay.fromJson(Map<String, dynamic> json) =
      _$ShiftsByDayImpl.fromJson;

  @override
  DateTime? get dayStart;
  @override
  Time? get totalDayTime;
  @override
  DateTime? get dayEnd;
  @override
  List<Shift>? get shifts;
  @override
  @JsonKey(ignore: true)
  _$$ShiftsByDayImplCopyWith<_$ShiftsByDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Shift _$ShiftFromJson(Map<String, dynamic> json) {
  return _Shift.fromJson(json);
}

/// @nodoc
mixin _$Shift {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get startTimeInTimezone => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  DateTime? get endTimeInTimezone => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get shiftStatus => throw _privateConstructorUsedError;
  String? get shiftTimezone => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get companyId => throw _privateConstructorUsedError;
  int? get projectId => throw _privateConstructorUsedError;
  Project? get project => throw _privateConstructorUsedError;
  ShiftUser? get user => throw _privateConstructorUsedError;
  Time? get totalShiftTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftCopyWith<Shift> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftCopyWith<$Res> {
  factory $ShiftCopyWith(Shift value, $Res Function(Shift) then) =
      _$ShiftCopyWithImpl<$Res, Shift>;
  @useResult
  $Res call(
      {int? id,
      DateTime? startTime,
      DateTime? startTimeInTimezone,
      DateTime? endTime,
      DateTime? endTimeInTimezone,
      String? note,
      String? shiftStatus,
      String? shiftTimezone,
      int? userId,
      int? companyId,
      int? projectId,
      Project? project,
      ShiftUser? user,
      Time? totalShiftTime});

  $ProjectCopyWith<$Res>? get project;
  $ShiftUserCopyWith<$Res>? get user;
  $TimeCopyWith<$Res>? get totalShiftTime;
}

/// @nodoc
class _$ShiftCopyWithImpl<$Res, $Val extends Shift>
    implements $ShiftCopyWith<$Res> {
  _$ShiftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startTime = freezed,
    Object? startTimeInTimezone = freezed,
    Object? endTime = freezed,
    Object? endTimeInTimezone = freezed,
    Object? note = freezed,
    Object? shiftStatus = freezed,
    Object? shiftTimezone = freezed,
    Object? userId = freezed,
    Object? companyId = freezed,
    Object? projectId = freezed,
    Object? project = freezed,
    Object? user = freezed,
    Object? totalShiftTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTimeInTimezone: freezed == startTimeInTimezone
          ? _value.startTimeInTimezone
          : startTimeInTimezone // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTimeInTimezone: freezed == endTimeInTimezone
          ? _value.endTimeInTimezone
          : endTimeInTimezone // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftStatus: freezed == shiftStatus
          ? _value.shiftStatus
          : shiftStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftTimezone: freezed == shiftTimezone
          ? _value.shiftTimezone
          : shiftTimezone // ignore: cast_nullable_to_non_nullable
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
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ShiftUser?,
      totalShiftTime: freezed == totalShiftTime
          ? _value.totalShiftTime
          : totalShiftTime // ignore: cast_nullable_to_non_nullable
              as Time?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res>? get project {
    if (_value.project == null) {
      return null;
    }

    return $ProjectCopyWith<$Res>(_value.project!, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShiftUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ShiftUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get totalShiftTime {
    if (_value.totalShiftTime == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.totalShiftTime!, (value) {
      return _then(_value.copyWith(totalShiftTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShiftImplCopyWith<$Res> implements $ShiftCopyWith<$Res> {
  factory _$$ShiftImplCopyWith(
          _$ShiftImpl value, $Res Function(_$ShiftImpl) then) =
      __$$ShiftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? startTime,
      DateTime? startTimeInTimezone,
      DateTime? endTime,
      DateTime? endTimeInTimezone,
      String? note,
      String? shiftStatus,
      String? shiftTimezone,
      int? userId,
      int? companyId,
      int? projectId,
      Project? project,
      ShiftUser? user,
      Time? totalShiftTime});

  @override
  $ProjectCopyWith<$Res>? get project;
  @override
  $ShiftUserCopyWith<$Res>? get user;
  @override
  $TimeCopyWith<$Res>? get totalShiftTime;
}

/// @nodoc
class __$$ShiftImplCopyWithImpl<$Res>
    extends _$ShiftCopyWithImpl<$Res, _$ShiftImpl>
    implements _$$ShiftImplCopyWith<$Res> {
  __$$ShiftImplCopyWithImpl(
      _$ShiftImpl _value, $Res Function(_$ShiftImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startTime = freezed,
    Object? startTimeInTimezone = freezed,
    Object? endTime = freezed,
    Object? endTimeInTimezone = freezed,
    Object? note = freezed,
    Object? shiftStatus = freezed,
    Object? shiftTimezone = freezed,
    Object? userId = freezed,
    Object? companyId = freezed,
    Object? projectId = freezed,
    Object? project = freezed,
    Object? user = freezed,
    Object? totalShiftTime = freezed,
  }) {
    return _then(_$ShiftImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTimeInTimezone: freezed == startTimeInTimezone
          ? _value.startTimeInTimezone
          : startTimeInTimezone // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTimeInTimezone: freezed == endTimeInTimezone
          ? _value.endTimeInTimezone
          : endTimeInTimezone // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftStatus: freezed == shiftStatus
          ? _value.shiftStatus
          : shiftStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftTimezone: freezed == shiftTimezone
          ? _value.shiftTimezone
          : shiftTimezone // ignore: cast_nullable_to_non_nullable
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
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ShiftUser?,
      totalShiftTime: freezed == totalShiftTime
          ? _value.totalShiftTime
          : totalShiftTime // ignore: cast_nullable_to_non_nullable
              as Time?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftImpl implements _Shift {
  const _$ShiftImpl(
      {this.id,
      this.startTime,
      this.startTimeInTimezone,
      this.endTime,
      this.endTimeInTimezone,
      this.note,
      this.shiftStatus,
      this.shiftTimezone,
      this.userId,
      this.companyId,
      this.projectId,
      this.project,
      this.user,
      this.totalShiftTime});

  factory _$ShiftImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? startTime;
  @override
  final DateTime? startTimeInTimezone;
  @override
  final DateTime? endTime;
  @override
  final DateTime? endTimeInTimezone;
  @override
  final String? note;
  @override
  final String? shiftStatus;
  @override
  final String? shiftTimezone;
  @override
  final int? userId;
  @override
  final int? companyId;
  @override
  final int? projectId;
  @override
  final Project? project;
  @override
  final ShiftUser? user;
  @override
  final Time? totalShiftTime;

  @override
  String toString() {
    return 'Shift(id: $id, startTime: $startTime, startTimeInTimezone: $startTimeInTimezone, endTime: $endTime, endTimeInTimezone: $endTimeInTimezone, note: $note, shiftStatus: $shiftStatus, shiftTimezone: $shiftTimezone, userId: $userId, companyId: $companyId, projectId: $projectId, project: $project, user: $user, totalShiftTime: $totalShiftTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.startTimeInTimezone, startTimeInTimezone) ||
                other.startTimeInTimezone == startTimeInTimezone) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.endTimeInTimezone, endTimeInTimezone) ||
                other.endTimeInTimezone == endTimeInTimezone) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.shiftStatus, shiftStatus) ||
                other.shiftStatus == shiftStatus) &&
            (identical(other.shiftTimezone, shiftTimezone) ||
                other.shiftTimezone == shiftTimezone) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.totalShiftTime, totalShiftTime) ||
                other.totalShiftTime == totalShiftTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      startTime,
      startTimeInTimezone,
      endTime,
      endTimeInTimezone,
      note,
      shiftStatus,
      shiftTimezone,
      userId,
      companyId,
      projectId,
      project,
      user,
      totalShiftTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftImplCopyWith<_$ShiftImpl> get copyWith =>
      __$$ShiftImplCopyWithImpl<_$ShiftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftImplToJson(
      this,
    );
  }
}

abstract class _Shift implements Shift {
  const factory _Shift(
      {final int? id,
      final DateTime? startTime,
      final DateTime? startTimeInTimezone,
      final DateTime? endTime,
      final DateTime? endTimeInTimezone,
      final String? note,
      final String? shiftStatus,
      final String? shiftTimezone,
      final int? userId,
      final int? companyId,
      final int? projectId,
      final Project? project,
      final ShiftUser? user,
      final Time? totalShiftTime}) = _$ShiftImpl;

  factory _Shift.fromJson(Map<String, dynamic> json) = _$ShiftImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime? get startTime;
  @override
  DateTime? get startTimeInTimezone;
  @override
  DateTime? get endTime;
  @override
  DateTime? get endTimeInTimezone;
  @override
  String? get note;
  @override
  String? get shiftStatus;
  @override
  String? get shiftTimezone;
  @override
  int? get userId;
  @override
  int? get companyId;
  @override
  int? get projectId;
  @override
  Project? get project;
  @override
  ShiftUser? get user;
  @override
  Time? get totalShiftTime;
  @override
  @JsonKey(ignore: true)
  _$$ShiftImplCopyWith<_$ShiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShiftUser _$ShiftUserFromJson(Map<String, dynamic> json) {
  return _ShiftUser.fromJson(json);
}

/// @nodoc
mixin _$ShiftUser {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  dynamic get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftUserCopyWith<ShiftUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftUserCopyWith<$Res> {
  factory $ShiftUserCopyWith(ShiftUser value, $Res Function(ShiftUser) then) =
      _$ShiftUserCopyWithImpl<$Res, ShiftUser>;
  @useResult
  $Res call({int? id, String? name, String? email, dynamic profileImage});
}

/// @nodoc
class _$ShiftUserCopyWithImpl<$Res, $Val extends ShiftUser>
    implements $ShiftUserCopyWith<$Res> {
  _$ShiftUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profileImage = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShiftUserImplCopyWith<$Res>
    implements $ShiftUserCopyWith<$Res> {
  factory _$$ShiftUserImplCopyWith(
          _$ShiftUserImpl value, $Res Function(_$ShiftUserImpl) then) =
      __$$ShiftUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? email, dynamic profileImage});
}

/// @nodoc
class __$$ShiftUserImplCopyWithImpl<$Res>
    extends _$ShiftUserCopyWithImpl<$Res, _$ShiftUserImpl>
    implements _$$ShiftUserImplCopyWith<$Res> {
  __$$ShiftUserImplCopyWithImpl(
      _$ShiftUserImpl _value, $Res Function(_$ShiftUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$ShiftUserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftUserImpl implements _ShiftUser {
  const _$ShiftUserImpl({this.id, this.name, this.email, this.profileImage});

  factory _$ShiftUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftUserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final dynamic profileImage;

  @override
  String toString() {
    return 'ShiftUser(id: $id, name: $name, email: $email, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email,
      const DeepCollectionEquality().hash(profileImage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftUserImplCopyWith<_$ShiftUserImpl> get copyWith =>
      __$$ShiftUserImplCopyWithImpl<_$ShiftUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftUserImplToJson(
      this,
    );
  }
}

abstract class _ShiftUser implements ShiftUser {
  const factory _ShiftUser(
      {final int? id,
      final String? name,
      final String? email,
      final dynamic profileImage}) = _$ShiftUserImpl;

  factory _ShiftUser.fromJson(Map<String, dynamic> json) =
      _$ShiftUserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  dynamic get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$ShiftUserImplCopyWith<_$ShiftUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PastShiftModelUser _$PastShiftModelUserFromJson(Map<String, dynamic> json) {
  return _PastShiftModelUser.fromJson(json);
}

/// @nodoc
mixin _$PastShiftModelUser {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  dynamic get deletedAt => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  dynamic get previousEmail => throw _privateConstructorUsedError;
  dynamic get profileImage => throw _privateConstructorUsedError;
  dynamic get phone => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;
  bool? get isUserOnboardingCompleted => throw _privateConstructorUsedError;
  dynamic get onboardingStep => throw _privateConstructorUsedError;
  dynamic get verificationEmailLastSentOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PastShiftModelUserCopyWith<PastShiftModelUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PastShiftModelUserCopyWith<$Res> {
  factory $PastShiftModelUserCopyWith(
          PastShiftModelUser value, $Res Function(PastShiftModelUser) then) =
      _$PastShiftModelUserCopyWithImpl<$Res, PastShiftModelUser>;
  @useResult
  $Res call(
      {int? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic deletedAt,
      String? name,
      String? email,
      dynamic previousEmail,
      dynamic profileImage,
      dynamic phone,
      bool? isVerified,
      bool? isUserOnboardingCompleted,
      dynamic onboardingStep,
      dynamic verificationEmailLastSentOn});
}

/// @nodoc
class _$PastShiftModelUserCopyWithImpl<$Res, $Val extends PastShiftModelUser>
    implements $PastShiftModelUserCopyWith<$Res> {
  _$PastShiftModelUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? previousEmail = freezed,
    Object? profileImage = freezed,
    Object? phone = freezed,
    Object? isVerified = freezed,
    Object? isUserOnboardingCompleted = freezed,
    Object? onboardingStep = freezed,
    Object? verificationEmailLastSentOn = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      previousEmail: freezed == previousEmail
          ? _value.previousEmail
          : previousEmail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUserOnboardingCompleted: freezed == isUserOnboardingCompleted
          ? _value.isUserOnboardingCompleted
          : isUserOnboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      onboardingStep: freezed == onboardingStep
          ? _value.onboardingStep
          : onboardingStep // ignore: cast_nullable_to_non_nullable
              as dynamic,
      verificationEmailLastSentOn: freezed == verificationEmailLastSentOn
          ? _value.verificationEmailLastSentOn
          : verificationEmailLastSentOn // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PastShiftModelUserImplCopyWith<$Res>
    implements $PastShiftModelUserCopyWith<$Res> {
  factory _$$PastShiftModelUserImplCopyWith(_$PastShiftModelUserImpl value,
          $Res Function(_$PastShiftModelUserImpl) then) =
      __$$PastShiftModelUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic deletedAt,
      String? name,
      String? email,
      dynamic previousEmail,
      dynamic profileImage,
      dynamic phone,
      bool? isVerified,
      bool? isUserOnboardingCompleted,
      dynamic onboardingStep,
      dynamic verificationEmailLastSentOn});
}

/// @nodoc
class __$$PastShiftModelUserImplCopyWithImpl<$Res>
    extends _$PastShiftModelUserCopyWithImpl<$Res, _$PastShiftModelUserImpl>
    implements _$$PastShiftModelUserImplCopyWith<$Res> {
  __$$PastShiftModelUserImplCopyWithImpl(_$PastShiftModelUserImpl _value,
      $Res Function(_$PastShiftModelUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? previousEmail = freezed,
    Object? profileImage = freezed,
    Object? phone = freezed,
    Object? isVerified = freezed,
    Object? isUserOnboardingCompleted = freezed,
    Object? onboardingStep = freezed,
    Object? verificationEmailLastSentOn = freezed,
  }) {
    return _then(_$PastShiftModelUserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      previousEmail: freezed == previousEmail
          ? _value.previousEmail
          : previousEmail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUserOnboardingCompleted: freezed == isUserOnboardingCompleted
          ? _value.isUserOnboardingCompleted
          : isUserOnboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      onboardingStep: freezed == onboardingStep
          ? _value.onboardingStep
          : onboardingStep // ignore: cast_nullable_to_non_nullable
              as dynamic,
      verificationEmailLastSentOn: freezed == verificationEmailLastSentOn
          ? _value.verificationEmailLastSentOn
          : verificationEmailLastSentOn // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PastShiftModelUserImpl implements _PastShiftModelUser {
  const _$PastShiftModelUserImpl(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.name,
      this.email,
      this.previousEmail,
      this.profileImage,
      this.phone,
      this.isVerified,
      this.isUserOnboardingCompleted,
      this.onboardingStep,
      this.verificationEmailLastSentOn});

  factory _$PastShiftModelUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$PastShiftModelUserImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final dynamic deletedAt;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final dynamic previousEmail;
  @override
  final dynamic profileImage;
  @override
  final dynamic phone;
  @override
  final bool? isVerified;
  @override
  final bool? isUserOnboardingCompleted;
  @override
  final dynamic onboardingStep;
  @override
  final dynamic verificationEmailLastSentOn;

  @override
  String toString() {
    return 'PastShiftModelUser(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, name: $name, email: $email, previousEmail: $previousEmail, profileImage: $profileImage, phone: $phone, isVerified: $isVerified, isUserOnboardingCompleted: $isUserOnboardingCompleted, onboardingStep: $onboardingStep, verificationEmailLastSentOn: $verificationEmailLastSentOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PastShiftModelUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other.previousEmail, previousEmail) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isUserOnboardingCompleted,
                    isUserOnboardingCompleted) ||
                other.isUserOnboardingCompleted == isUserOnboardingCompleted) &&
            const DeepCollectionEquality()
                .equals(other.onboardingStep, onboardingStep) &&
            const DeepCollectionEquality().equals(
                other.verificationEmailLastSentOn,
                verificationEmailLastSentOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(deletedAt),
      name,
      email,
      const DeepCollectionEquality().hash(previousEmail),
      const DeepCollectionEquality().hash(profileImage),
      const DeepCollectionEquality().hash(phone),
      isVerified,
      isUserOnboardingCompleted,
      const DeepCollectionEquality().hash(onboardingStep),
      const DeepCollectionEquality().hash(verificationEmailLastSentOn));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PastShiftModelUserImplCopyWith<_$PastShiftModelUserImpl> get copyWith =>
      __$$PastShiftModelUserImplCopyWithImpl<_$PastShiftModelUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PastShiftModelUserImplToJson(
      this,
    );
  }
}

abstract class _PastShiftModelUser implements PastShiftModelUser {
  const factory _PastShiftModelUser(
      {final int? id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final dynamic deletedAt,
      final String? name,
      final String? email,
      final dynamic previousEmail,
      final dynamic profileImage,
      final dynamic phone,
      final bool? isVerified,
      final bool? isUserOnboardingCompleted,
      final dynamic onboardingStep,
      final dynamic verificationEmailLastSentOn}) = _$PastShiftModelUserImpl;

  factory _PastShiftModelUser.fromJson(Map<String, dynamic> json) =
      _$PastShiftModelUserImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  dynamic get deletedAt;
  @override
  String? get name;
  @override
  String? get email;
  @override
  dynamic get previousEmail;
  @override
  dynamic get profileImage;
  @override
  dynamic get phone;
  @override
  bool? get isVerified;
  @override
  bool? get isUserOnboardingCompleted;
  @override
  dynamic get onboardingStep;
  @override
  dynamic get verificationEmailLastSentOn;
  @override
  @JsonKey(ignore: true)
  _$$PastShiftModelUserImplCopyWith<_$PastShiftModelUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
