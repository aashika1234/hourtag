// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ongoing_shift_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OngoingShiftModel _$OngoingShiftModelFromJson(Map<String, dynamic> json) {
  return _OngoingShiftModel.fromJson(json);
}

/// @nodoc
mixin _$OngoingShiftModel {
  TotalShift? get totalShifts => throw _privateConstructorUsedError;
  List<Shift>? get todaysShifts => throw _privateConstructorUsedError;
  Shift? get ongoingShift => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OngoingShiftModelCopyWith<OngoingShiftModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OngoingShiftModelCopyWith<$Res> {
  factory $OngoingShiftModelCopyWith(
          OngoingShiftModel value, $Res Function(OngoingShiftModel) then) =
      _$OngoingShiftModelCopyWithImpl<$Res, OngoingShiftModel>;
  @useResult
  $Res call(
      {TotalShift? totalShifts,
      List<Shift>? todaysShifts,
      Shift? ongoingShift});

  $TotalShiftCopyWith<$Res>? get totalShifts;
  $ShiftCopyWith<$Res>? get ongoingShift;
}

/// @nodoc
class _$OngoingShiftModelCopyWithImpl<$Res, $Val extends OngoingShiftModel>
    implements $OngoingShiftModelCopyWith<$Res> {
  _$OngoingShiftModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalShifts = freezed,
    Object? todaysShifts = freezed,
    Object? ongoingShift = freezed,
  }) {
    return _then(_value.copyWith(
      totalShifts: freezed == totalShifts
          ? _value.totalShifts
          : totalShifts // ignore: cast_nullable_to_non_nullable
              as TotalShift?,
      todaysShifts: freezed == todaysShifts
          ? _value.todaysShifts
          : todaysShifts // ignore: cast_nullable_to_non_nullable
              as List<Shift>?,
      ongoingShift: freezed == ongoingShift
          ? _value.ongoingShift
          : ongoingShift // ignore: cast_nullable_to_non_nullable
              as Shift?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalShiftCopyWith<$Res>? get totalShifts {
    if (_value.totalShifts == null) {
      return null;
    }

    return $TotalShiftCopyWith<$Res>(_value.totalShifts!, (value) {
      return _then(_value.copyWith(totalShifts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShiftCopyWith<$Res>? get ongoingShift {
    if (_value.ongoingShift == null) {
      return null;
    }

    return $ShiftCopyWith<$Res>(_value.ongoingShift!, (value) {
      return _then(_value.copyWith(ongoingShift: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OngoingShiftModelImplCopyWith<$Res>
    implements $OngoingShiftModelCopyWith<$Res> {
  factory _$$OngoingShiftModelImplCopyWith(_$OngoingShiftModelImpl value,
          $Res Function(_$OngoingShiftModelImpl) then) =
      __$$OngoingShiftModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TotalShift? totalShifts,
      List<Shift>? todaysShifts,
      Shift? ongoingShift});

  @override
  $TotalShiftCopyWith<$Res>? get totalShifts;
  @override
  $ShiftCopyWith<$Res>? get ongoingShift;
}

/// @nodoc
class __$$OngoingShiftModelImplCopyWithImpl<$Res>
    extends _$OngoingShiftModelCopyWithImpl<$Res, _$OngoingShiftModelImpl>
    implements _$$OngoingShiftModelImplCopyWith<$Res> {
  __$$OngoingShiftModelImplCopyWithImpl(_$OngoingShiftModelImpl _value,
      $Res Function(_$OngoingShiftModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalShifts = freezed,
    Object? todaysShifts = freezed,
    Object? ongoingShift = freezed,
  }) {
    return _then(_$OngoingShiftModelImpl(
      totalShifts: freezed == totalShifts
          ? _value.totalShifts
          : totalShifts // ignore: cast_nullable_to_non_nullable
              as TotalShift?,
      todaysShifts: freezed == todaysShifts
          ? _value._todaysShifts
          : todaysShifts // ignore: cast_nullable_to_non_nullable
              as List<Shift>?,
      ongoingShift: freezed == ongoingShift
          ? _value.ongoingShift
          : ongoingShift // ignore: cast_nullable_to_non_nullable
              as Shift?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OngoingShiftModelImpl implements _OngoingShiftModel {
  const _$OngoingShiftModelImpl(
      {this.totalShifts, final List<Shift>? todaysShifts, this.ongoingShift})
      : _todaysShifts = todaysShifts;

  factory _$OngoingShiftModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OngoingShiftModelImplFromJson(json);

  @override
  final TotalShift? totalShifts;
  final List<Shift>? _todaysShifts;
  @override
  List<Shift>? get todaysShifts {
    final value = _todaysShifts;
    if (value == null) return null;
    if (_todaysShifts is EqualUnmodifiableListView) return _todaysShifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Shift? ongoingShift;

  @override
  String toString() {
    return 'OngoingShiftModel(totalShifts: $totalShifts, todaysShifts: $todaysShifts, ongoingShift: $ongoingShift)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OngoingShiftModelImpl &&
            (identical(other.totalShifts, totalShifts) ||
                other.totalShifts == totalShifts) &&
            const DeepCollectionEquality()
                .equals(other._todaysShifts, _todaysShifts) &&
            (identical(other.ongoingShift, ongoingShift) ||
                other.ongoingShift == ongoingShift));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalShifts,
      const DeepCollectionEquality().hash(_todaysShifts), ongoingShift);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OngoingShiftModelImplCopyWith<_$OngoingShiftModelImpl> get copyWith =>
      __$$OngoingShiftModelImplCopyWithImpl<_$OngoingShiftModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OngoingShiftModelImplToJson(
      this,
    );
  }
}

abstract class _OngoingShiftModel implements OngoingShiftModel {
  const factory _OngoingShiftModel(
      {final TotalShift? totalShifts,
      final List<Shift>? todaysShifts,
      final Shift? ongoingShift}) = _$OngoingShiftModelImpl;

  factory _OngoingShiftModel.fromJson(Map<String, dynamic> json) =
      _$OngoingShiftModelImpl.fromJson;

  @override
  TotalShift? get totalShifts;
  @override
  List<Shift>? get todaysShifts;
  @override
  Shift? get ongoingShift;
  @override
  @JsonKey(ignore: true)
  _$$OngoingShiftModelImplCopyWith<_$OngoingShiftModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Shift _$ShiftFromJson(Map<String, dynamic> json) {
  return _Shift.fromJson(json);
}

/// @nodoc
mixin _$Shift {
  TotalShift? get total_shift_time => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  dynamic get deleted_at => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  DateTime? get start_time => throw _privateConstructorUsedError;
  DateTime? get end_time => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get companyId => throw _privateConstructorUsedError;
  int? get projectId => throw _privateConstructorUsedError;
  String? get shiftTimezone => throw _privateConstructorUsedError;
  bool? get forceStopped => throw _privateConstructorUsedError;
  String? get shiftStatus => throw _privateConstructorUsedError;
  Project? get project => throw _privateConstructorUsedError;

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
      {TotalShift? total_shift_time,
      int? id,
      DateTime? created_at,
      DateTime? updated_at,
      dynamic deleted_at,
      String? note,
      DateTime? start_time,
      DateTime? end_time,
      int? userId,
      int? companyId,
      int? projectId,
      String? shiftTimezone,
      bool? forceStopped,
      String? shiftStatus,
      Project? project});

  $TotalShiftCopyWith<$Res>? get total_shift_time;
  $ProjectCopyWith<$Res>? get project;
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
    Object? total_shift_time = freezed,
    Object? id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? note = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? userId = freezed,
    Object? companyId = freezed,
    Object? projectId = freezed,
    Object? shiftTimezone = freezed,
    Object? forceStopped = freezed,
    Object? shiftStatus = freezed,
    Object? project = freezed,
  }) {
    return _then(_value.copyWith(
      total_shift_time: freezed == total_shift_time
          ? _value.total_shift_time
          : total_shift_time // ignore: cast_nullable_to_non_nullable
              as TotalShift?,
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
              as DateTime?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      forceStopped: freezed == forceStopped
          ? _value.forceStopped
          : forceStopped // ignore: cast_nullable_to_non_nullable
              as bool?,
      shiftStatus: freezed == shiftStatus
          ? _value.shiftStatus
          : shiftStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalShiftCopyWith<$Res>? get total_shift_time {
    if (_value.total_shift_time == null) {
      return null;
    }

    return $TotalShiftCopyWith<$Res>(_value.total_shift_time!, (value) {
      return _then(_value.copyWith(total_shift_time: value) as $Val);
    });
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
}

/// @nodoc
abstract class _$$ShiftImplCopyWith<$Res> implements $ShiftCopyWith<$Res> {
  factory _$$ShiftImplCopyWith(
          _$ShiftImpl value, $Res Function(_$ShiftImpl) then) =
      __$$ShiftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TotalShift? total_shift_time,
      int? id,
      DateTime? created_at,
      DateTime? updated_at,
      dynamic deleted_at,
      String? note,
      DateTime? start_time,
      DateTime? end_time,
      int? userId,
      int? companyId,
      int? projectId,
      String? shiftTimezone,
      bool? forceStopped,
      String? shiftStatus,
      Project? project});

  @override
  $TotalShiftCopyWith<$Res>? get total_shift_time;
  @override
  $ProjectCopyWith<$Res>? get project;
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
    Object? total_shift_time = freezed,
    Object? id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? note = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? userId = freezed,
    Object? companyId = freezed,
    Object? projectId = freezed,
    Object? shiftTimezone = freezed,
    Object? forceStopped = freezed,
    Object? shiftStatus = freezed,
    Object? project = freezed,
  }) {
    return _then(_$ShiftImpl(
      total_shift_time: freezed == total_shift_time
          ? _value.total_shift_time
          : total_shift_time // ignore: cast_nullable_to_non_nullable
              as TotalShift?,
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
              as DateTime?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      forceStopped: freezed == forceStopped
          ? _value.forceStopped
          : forceStopped // ignore: cast_nullable_to_non_nullable
              as bool?,
      shiftStatus: freezed == shiftStatus
          ? _value.shiftStatus
          : shiftStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftImpl implements _Shift {
  const _$ShiftImpl(
      {this.total_shift_time,
      this.id,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.note,
      this.start_time,
      this.end_time,
      this.userId,
      this.companyId,
      this.projectId,
      this.shiftTimezone,
      this.forceStopped,
      this.shiftStatus,
      this.project});

  factory _$ShiftImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftImplFromJson(json);

  @override
  final TotalShift? total_shift_time;
  @override
  final int? id;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final dynamic deleted_at;
  @override
  final String? note;
  @override
  final DateTime? start_time;
  @override
  final DateTime? end_time;
  @override
  final int? userId;
  @override
  final int? companyId;
  @override
  final int? projectId;
  @override
  final String? shiftTimezone;
  @override
  final bool? forceStopped;
  @override
  final String? shiftStatus;
  @override
  final Project? project;

  @override
  String toString() {
    return 'Shift(total_shift_time: $total_shift_time, id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, note: $note, start_time: $start_time, end_time: $end_time, userId: $userId, companyId: $companyId, projectId: $projectId, shiftTimezone: $shiftTimezone, forceStopped: $forceStopped, shiftStatus: $shiftStatus, project: $project)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftImpl &&
            (identical(other.total_shift_time, total_shift_time) ||
                other.total_shift_time == total_shift_time) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            const DeepCollectionEquality()
                .equals(other.deleted_at, deleted_at) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.start_time, start_time) ||
                other.start_time == start_time) &&
            (identical(other.end_time, end_time) ||
                other.end_time == end_time) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.shiftTimezone, shiftTimezone) ||
                other.shiftTimezone == shiftTimezone) &&
            (identical(other.forceStopped, forceStopped) ||
                other.forceStopped == forceStopped) &&
            (identical(other.shiftStatus, shiftStatus) ||
                other.shiftStatus == shiftStatus) &&
            (identical(other.project, project) || other.project == project));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      total_shift_time,
      id,
      created_at,
      updated_at,
      const DeepCollectionEquality().hash(deleted_at),
      note,
      start_time,
      end_time,
      userId,
      companyId,
      projectId,
      shiftTimezone,
      forceStopped,
      shiftStatus,
      project);

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
      {final TotalShift? total_shift_time,
      final int? id,
      final DateTime? created_at,
      final DateTime? updated_at,
      final dynamic deleted_at,
      final String? note,
      final DateTime? start_time,
      final DateTime? end_time,
      final int? userId,
      final int? companyId,
      final int? projectId,
      final String? shiftTimezone,
      final bool? forceStopped,
      final String? shiftStatus,
      final Project? project}) = _$ShiftImpl;

  factory _Shift.fromJson(Map<String, dynamic> json) = _$ShiftImpl.fromJson;

  @override
  TotalShift? get total_shift_time;
  @override
  int? get id;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  dynamic get deleted_at;
  @override
  String? get note;
  @override
  DateTime? get start_time;
  @override
  DateTime? get end_time;
  @override
  int? get userId;
  @override
  int? get companyId;
  @override
  int? get projectId;
  @override
  String? get shiftTimezone;
  @override
  bool? get forceStopped;
  @override
  String? get shiftStatus;
  @override
  Project? get project;
  @override
  @JsonKey(ignore: true)
  _$$ShiftImplCopyWith<_$ShiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  dynamic get updated_at => throw _privateConstructorUsedError;
  dynamic get deleted_at => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  String? get colorCode => throw _privateConstructorUsedError;
  int? get createdByUserId => throw _privateConstructorUsedError;
  int? get companyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {int? id,
      DateTime? created_at,
      dynamic updated_at,
      dynamic deleted_at,
      String? name,
      dynamic description,
      String? colorCode,
      int? createdByUserId,
      int? companyId});
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
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? colorCode = freezed,
    Object? createdByUserId = freezed,
    Object? companyId = freezed,
  }) {
    return _then(_value.copyWith(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdByUserId: freezed == createdByUserId
          ? _value.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call(
      {int? id,
      DateTime? created_at,
      dynamic updated_at,
      dynamic deleted_at,
      String? name,
      dynamic description,
      String? colorCode,
      int? createdByUserId,
      int? companyId});
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
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? colorCode = freezed,
    Object? createdByUserId = freezed,
    Object? companyId = freezed,
  }) {
    return _then(_$ProjectImpl(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdByUserId: freezed == createdByUserId
          ? _value.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {this.id,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.name,
      this.description,
      this.colorCode,
      this.createdByUserId,
      this.companyId});

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? created_at;
  @override
  final dynamic updated_at;
  @override
  final dynamic deleted_at;
  @override
  final String? name;
  @override
  final dynamic description;
  @override
  final String? colorCode;
  @override
  final int? createdByUserId;
  @override
  final int? companyId;

  @override
  String toString() {
    return 'Project(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, name: $name, description: $description, colorCode: $colorCode, createdByUserId: $createdByUserId, companyId: $companyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality()
                .equals(other.deleted_at, deleted_at) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.createdByUserId, createdByUserId) ||
                other.createdByUserId == createdByUserId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created_at,
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(deleted_at),
      name,
      const DeepCollectionEquality().hash(description),
      colorCode,
      createdByUserId,
      companyId);

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
      final DateTime? created_at,
      final dynamic updated_at,
      final dynamic deleted_at,
      final String? name,
      final dynamic description,
      final String? colorCode,
      final int? createdByUserId,
      final int? companyId}) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime? get created_at;
  @override
  dynamic get updated_at;
  @override
  dynamic get deleted_at;
  @override
  String? get name;
  @override
  dynamic get description;
  @override
  String? get colorCode;
  @override
  int? get createdByUserId;
  @override
  int? get companyId;
  @override
  @JsonKey(ignore: true)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TotalShift _$TotalShiftFromJson(Map<String, dynamic> json) {
  return _TotalShift.fromJson(json);
}

/// @nodoc
mixin _$TotalShift {
  int? get hours => throw _privateConstructorUsedError;
  int? get minutes => throw _privateConstructorUsedError;
  int? get seconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalShiftCopyWith<TotalShift> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalShiftCopyWith<$Res> {
  factory $TotalShiftCopyWith(
          TotalShift value, $Res Function(TotalShift) then) =
      _$TotalShiftCopyWithImpl<$Res, TotalShift>;
  @useResult
  $Res call({int? hours, int? minutes, int? seconds});
}

/// @nodoc
class _$TotalShiftCopyWithImpl<$Res, $Val extends TotalShift>
    implements $TotalShiftCopyWith<$Res> {
  _$TotalShiftCopyWithImpl(this._value, this._then);

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
abstract class _$$TotalShiftImplCopyWith<$Res>
    implements $TotalShiftCopyWith<$Res> {
  factory _$$TotalShiftImplCopyWith(
          _$TotalShiftImpl value, $Res Function(_$TotalShiftImpl) then) =
      __$$TotalShiftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? hours, int? minutes, int? seconds});
}

/// @nodoc
class __$$TotalShiftImplCopyWithImpl<$Res>
    extends _$TotalShiftCopyWithImpl<$Res, _$TotalShiftImpl>
    implements _$$TotalShiftImplCopyWith<$Res> {
  __$$TotalShiftImplCopyWithImpl(
      _$TotalShiftImpl _value, $Res Function(_$TotalShiftImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = freezed,
    Object? minutes = freezed,
    Object? seconds = freezed,
  }) {
    return _then(_$TotalShiftImpl(
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
class _$TotalShiftImpl implements _TotalShift {
  const _$TotalShiftImpl({this.hours, this.minutes, this.seconds});

  factory _$TotalShiftImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalShiftImplFromJson(json);

  @override
  final int? hours;
  @override
  final int? minutes;
  @override
  final int? seconds;

  @override
  String toString() {
    return 'TotalShift(hours: $hours, minutes: $minutes, seconds: $seconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalShiftImpl &&
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
  _$$TotalShiftImplCopyWith<_$TotalShiftImpl> get copyWith =>
      __$$TotalShiftImplCopyWithImpl<_$TotalShiftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalShiftImplToJson(
      this,
    );
  }
}

abstract class _TotalShift implements TotalShift {
  const factory _TotalShift(
      {final int? hours,
      final int? minutes,
      final int? seconds}) = _$TotalShiftImpl;

  factory _TotalShift.fromJson(Map<String, dynamic> json) =
      _$TotalShiftImpl.fromJson;

  @override
  int? get hours;
  @override
  int? get minutes;
  @override
  int? get seconds;
  @override
  @JsonKey(ignore: true)
  _$$TotalShiftImplCopyWith<_$TotalShiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
