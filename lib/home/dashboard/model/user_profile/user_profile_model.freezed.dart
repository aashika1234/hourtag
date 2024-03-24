// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) {
  return _UserProfileModel.fromJson(json);
}

/// @nodoc
mixin _$UserProfileModel {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  dynamic get deleted_at => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  dynamic get previousEmail => throw _privateConstructorUsedError;
  dynamic get profile_image => throw _privateConstructorUsedError;
  dynamic get phone => throw _privateConstructorUsedError;
  bool? get is_verified => throw _privateConstructorUsedError;
  bool? get isUserOnboardingCompleted => throw _privateConstructorUsedError;
  dynamic get onboardingStep => throw _privateConstructorUsedError;
  dynamic get verificationEmailLastSentOn => throw _privateConstructorUsedError;
  List<DCompany>? get usersAndCompanies => throw _privateConstructorUsedError;
  DCompany? get selectedCompany => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileModelCopyWith<UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileModelCopyWith<$Res> {
  factory $UserProfileModelCopyWith(
          UserProfileModel value, $Res Function(UserProfileModel) then) =
      _$UserProfileModelCopyWithImpl<$Res, UserProfileModel>;
  @useResult
  $Res call(
      {int? id,
      DateTime? created_at,
      DateTime? updated_at,
      dynamic deleted_at,
      String? name,
      String? email,
      dynamic previousEmail,
      dynamic profile_image,
      dynamic phone,
      bool? is_verified,
      bool? isUserOnboardingCompleted,
      dynamic onboardingStep,
      dynamic verificationEmailLastSentOn,
      List<DCompany>? usersAndCompanies,
      DCompany? selectedCompany});

  $DCompanyCopyWith<$Res>? get selectedCompany;
}

/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res, $Val extends UserProfileModel>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._value, this._then);

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
    Object? email = freezed,
    Object? previousEmail = freezed,
    Object? profile_image = freezed,
    Object? phone = freezed,
    Object? is_verified = freezed,
    Object? isUserOnboardingCompleted = freezed,
    Object? onboardingStep = freezed,
    Object? verificationEmailLastSentOn = freezed,
    Object? usersAndCompanies = freezed,
    Object? selectedCompany = freezed,
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
              as DateTime?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
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
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      is_verified: freezed == is_verified
          ? _value.is_verified
          : is_verified // ignore: cast_nullable_to_non_nullable
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
      usersAndCompanies: freezed == usersAndCompanies
          ? _value.usersAndCompanies
          : usersAndCompanies // ignore: cast_nullable_to_non_nullable
              as List<DCompany>?,
      selectedCompany: freezed == selectedCompany
          ? _value.selectedCompany
          : selectedCompany // ignore: cast_nullable_to_non_nullable
              as DCompany?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DCompanyCopyWith<$Res>? get selectedCompany {
    if (_value.selectedCompany == null) {
      return null;
    }

    return $DCompanyCopyWith<$Res>(_value.selectedCompany!, (value) {
      return _then(_value.copyWith(selectedCompany: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileModelImplCopyWith<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  factory _$$UserProfileModelImplCopyWith(_$UserProfileModelImpl value,
          $Res Function(_$UserProfileModelImpl) then) =
      __$$UserProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? created_at,
      DateTime? updated_at,
      dynamic deleted_at,
      String? name,
      String? email,
      dynamic previousEmail,
      dynamic profile_image,
      dynamic phone,
      bool? is_verified,
      bool? isUserOnboardingCompleted,
      dynamic onboardingStep,
      dynamic verificationEmailLastSentOn,
      List<DCompany>? usersAndCompanies,
      DCompany? selectedCompany});

  @override
  $DCompanyCopyWith<$Res>? get selectedCompany;
}

/// @nodoc
class __$$UserProfileModelImplCopyWithImpl<$Res>
    extends _$UserProfileModelCopyWithImpl<$Res, _$UserProfileModelImpl>
    implements _$$UserProfileModelImplCopyWith<$Res> {
  __$$UserProfileModelImplCopyWithImpl(_$UserProfileModelImpl _value,
      $Res Function(_$UserProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? previousEmail = freezed,
    Object? profile_image = freezed,
    Object? phone = freezed,
    Object? is_verified = freezed,
    Object? isUserOnboardingCompleted = freezed,
    Object? onboardingStep = freezed,
    Object? verificationEmailLastSentOn = freezed,
    Object? usersAndCompanies = freezed,
    Object? selectedCompany = freezed,
  }) {
    return _then(_$UserProfileModelImpl(
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
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      is_verified: freezed == is_verified
          ? _value.is_verified
          : is_verified // ignore: cast_nullable_to_non_nullable
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
      usersAndCompanies: freezed == usersAndCompanies
          ? _value._usersAndCompanies
          : usersAndCompanies // ignore: cast_nullable_to_non_nullable
              as List<DCompany>?,
      selectedCompany: freezed == selectedCompany
          ? _value.selectedCompany
          : selectedCompany // ignore: cast_nullable_to_non_nullable
              as DCompany?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileModelImpl implements _UserProfileModel {
  const _$UserProfileModelImpl(
      {this.id,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.name,
      this.email,
      this.previousEmail,
      this.profile_image,
      this.phone,
      this.is_verified,
      this.isUserOnboardingCompleted,
      this.onboardingStep,
      this.verificationEmailLastSentOn,
      final List<DCompany>? usersAndCompanies,
      this.selectedCompany})
      : _usersAndCompanies = usersAndCompanies;

  factory _$UserProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileModelImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final dynamic deleted_at;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final dynamic previousEmail;
  @override
  final dynamic profile_image;
  @override
  final dynamic phone;
  @override
  final bool? is_verified;
  @override
  final bool? isUserOnboardingCompleted;
  @override
  final dynamic onboardingStep;
  @override
  final dynamic verificationEmailLastSentOn;
  final List<DCompany>? _usersAndCompanies;
  @override
  List<DCompany>? get usersAndCompanies {
    final value = _usersAndCompanies;
    if (value == null) return null;
    if (_usersAndCompanies is EqualUnmodifiableListView)
      return _usersAndCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DCompany? selectedCompany;

  @override
  String toString() {
    return 'UserProfileModel(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, name: $name, email: $email, previousEmail: $previousEmail, profile_image: $profile_image, phone: $phone, is_verified: $is_verified, isUserOnboardingCompleted: $isUserOnboardingCompleted, onboardingStep: $onboardingStep, verificationEmailLastSentOn: $verificationEmailLastSentOn, usersAndCompanies: $usersAndCompanies, selectedCompany: $selectedCompany)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            const DeepCollectionEquality()
                .equals(other.deleted_at, deleted_at) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other.previousEmail, previousEmail) &&
            const DeepCollectionEquality()
                .equals(other.profile_image, profile_image) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            (identical(other.is_verified, is_verified) ||
                other.is_verified == is_verified) &&
            (identical(other.isUserOnboardingCompleted,
                    isUserOnboardingCompleted) ||
                other.isUserOnboardingCompleted == isUserOnboardingCompleted) &&
            const DeepCollectionEquality()
                .equals(other.onboardingStep, onboardingStep) &&
            const DeepCollectionEquality().equals(
                other.verificationEmailLastSentOn,
                verificationEmailLastSentOn) &&
            const DeepCollectionEquality()
                .equals(other._usersAndCompanies, _usersAndCompanies) &&
            (identical(other.selectedCompany, selectedCompany) ||
                other.selectedCompany == selectedCompany));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created_at,
      updated_at,
      const DeepCollectionEquality().hash(deleted_at),
      name,
      email,
      const DeepCollectionEquality().hash(previousEmail),
      const DeepCollectionEquality().hash(profile_image),
      const DeepCollectionEquality().hash(phone),
      is_verified,
      isUserOnboardingCompleted,
      const DeepCollectionEquality().hash(onboardingStep),
      const DeepCollectionEquality().hash(verificationEmailLastSentOn),
      const DeepCollectionEquality().hash(_usersAndCompanies),
      selectedCompany);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileModelImplCopyWith<_$UserProfileModelImpl> get copyWith =>
      __$$UserProfileModelImplCopyWithImpl<_$UserProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileModelImplToJson(
      this,
    );
  }
}

abstract class _UserProfileModel implements UserProfileModel {
  const factory _UserProfileModel(
      {final int? id,
      final DateTime? created_at,
      final DateTime? updated_at,
      final dynamic deleted_at,
      final String? name,
      final String? email,
      final dynamic previousEmail,
      final dynamic profile_image,
      final dynamic phone,
      final bool? is_verified,
      final bool? isUserOnboardingCompleted,
      final dynamic onboardingStep,
      final dynamic verificationEmailLastSentOn,
      final List<DCompany>? usersAndCompanies,
      final DCompany? selectedCompany}) = _$UserProfileModelImpl;

  factory _UserProfileModel.fromJson(Map<String, dynamic> json) =
      _$UserProfileModelImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  dynamic get deleted_at;
  @override
  String? get name;
  @override
  String? get email;
  @override
  dynamic get previousEmail;
  @override
  dynamic get profile_image;
  @override
  dynamic get phone;
  @override
  bool? get is_verified;
  @override
  bool? get isUserOnboardingCompleted;
  @override
  dynamic get onboardingStep;
  @override
  dynamic get verificationEmailLastSentOn;
  @override
  List<DCompany>? get usersAndCompanies;
  @override
  DCompany? get selectedCompany;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileModelImplCopyWith<_$UserProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DCompany _$DCompanyFromJson(Map<String, dynamic> json) {
  return _DCompany.fromJson(json);
}

/// @nodoc
mixin _$DCompany {
  int? get userId => throw _privateConstructorUsedError;
  int? get companyId => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  bool? get isCurrentlySelectedCompany => throw _privateConstructorUsedError;
  bool? get isUserActive => throw _privateConstructorUsedError;
  dynamic get projectIdLastWorkedOn => throw _privateConstructorUsedError;
  int? get targetedWorkingHours => throw _privateConstructorUsedError;
  String? get targetedWorkingHoursType => throw _privateConstructorUsedError;
  dynamic get updated_at => throw _privateConstructorUsedError;
  dynamic get deleted_at => throw _privateConstructorUsedError;
  Company? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DCompanyCopyWith<DCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DCompanyCopyWith<$Res> {
  factory $DCompanyCopyWith(DCompany value, $Res Function(DCompany) then) =
      _$DCompanyCopyWithImpl<$Res, DCompany>;
  @useResult
  $Res call(
      {int? userId,
      int? companyId,
      String? role,
      String? position,
      DateTime? created_at,
      bool? isCurrentlySelectedCompany,
      bool? isUserActive,
      dynamic projectIdLastWorkedOn,
      int? targetedWorkingHours,
      String? targetedWorkingHoursType,
      dynamic updated_at,
      dynamic deleted_at,
      Company? company});

  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class _$DCompanyCopyWithImpl<$Res, $Val extends DCompany>
    implements $DCompanyCopyWith<$Res> {
  _$DCompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? companyId = freezed,
    Object? role = freezed,
    Object? position = freezed,
    Object? created_at = freezed,
    Object? isCurrentlySelectedCompany = freezed,
    Object? isUserActive = freezed,
    Object? projectIdLastWorkedOn = freezed,
    Object? targetedWorkingHours = freezed,
    Object? targetedWorkingHoursType = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCurrentlySelectedCompany: freezed == isCurrentlySelectedCompany
          ? _value.isCurrentlySelectedCompany
          : isCurrentlySelectedCompany // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUserActive: freezed == isUserActive
          ? _value.isUserActive
          : isUserActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      projectIdLastWorkedOn: freezed == projectIdLastWorkedOn
          ? _value.projectIdLastWorkedOn
          : projectIdLastWorkedOn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      targetedWorkingHours: freezed == targetedWorkingHours
          ? _value.targetedWorkingHours
          : targetedWorkingHours // ignore: cast_nullable_to_non_nullable
              as int?,
      targetedWorkingHoursType: freezed == targetedWorkingHoursType
          ? _value.targetedWorkingHoursType
          : targetedWorkingHoursType // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DCompanyImplCopyWith<$Res>
    implements $DCompanyCopyWith<$Res> {
  factory _$$DCompanyImplCopyWith(
          _$DCompanyImpl value, $Res Function(_$DCompanyImpl) then) =
      __$$DCompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      int? companyId,
      String? role,
      String? position,
      DateTime? created_at,
      bool? isCurrentlySelectedCompany,
      bool? isUserActive,
      dynamic projectIdLastWorkedOn,
      int? targetedWorkingHours,
      String? targetedWorkingHoursType,
      dynamic updated_at,
      dynamic deleted_at,
      Company? company});

  @override
  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class __$$DCompanyImplCopyWithImpl<$Res>
    extends _$DCompanyCopyWithImpl<$Res, _$DCompanyImpl>
    implements _$$DCompanyImplCopyWith<$Res> {
  __$$DCompanyImplCopyWithImpl(
      _$DCompanyImpl _value, $Res Function(_$DCompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? companyId = freezed,
    Object? role = freezed,
    Object? position = freezed,
    Object? created_at = freezed,
    Object? isCurrentlySelectedCompany = freezed,
    Object? isUserActive = freezed,
    Object? projectIdLastWorkedOn = freezed,
    Object? targetedWorkingHours = freezed,
    Object? targetedWorkingHoursType = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? company = freezed,
  }) {
    return _then(_$DCompanyImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCurrentlySelectedCompany: freezed == isCurrentlySelectedCompany
          ? _value.isCurrentlySelectedCompany
          : isCurrentlySelectedCompany // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUserActive: freezed == isUserActive
          ? _value.isUserActive
          : isUserActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      projectIdLastWorkedOn: freezed == projectIdLastWorkedOn
          ? _value.projectIdLastWorkedOn
          : projectIdLastWorkedOn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      targetedWorkingHours: freezed == targetedWorkingHours
          ? _value.targetedWorkingHours
          : targetedWorkingHours // ignore: cast_nullable_to_non_nullable
              as int?,
      targetedWorkingHoursType: freezed == targetedWorkingHoursType
          ? _value.targetedWorkingHoursType
          : targetedWorkingHoursType // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DCompanyImpl implements _DCompany {
  const _$DCompanyImpl(
      {this.userId,
      this.companyId,
      this.role,
      this.position,
      this.created_at,
      this.isCurrentlySelectedCompany,
      this.isUserActive,
      this.projectIdLastWorkedOn,
      this.targetedWorkingHours,
      this.targetedWorkingHoursType,
      this.updated_at,
      this.deleted_at,
      this.company});

  factory _$DCompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DCompanyImplFromJson(json);

  @override
  final int? userId;
  @override
  final int? companyId;
  @override
  final String? role;
  @override
  final String? position;
  @override
  final DateTime? created_at;
  @override
  final bool? isCurrentlySelectedCompany;
  @override
  final bool? isUserActive;
  @override
  final dynamic projectIdLastWorkedOn;
  @override
  final int? targetedWorkingHours;
  @override
  final String? targetedWorkingHoursType;
  @override
  final dynamic updated_at;
  @override
  final dynamic deleted_at;
  @override
  final Company? company;

  @override
  String toString() {
    return 'DCompany(userId: $userId, companyId: $companyId, role: $role, position: $position, created_at: $created_at, isCurrentlySelectedCompany: $isCurrentlySelectedCompany, isUserActive: $isUserActive, projectIdLastWorkedOn: $projectIdLastWorkedOn, targetedWorkingHours: $targetedWorkingHours, targetedWorkingHoursType: $targetedWorkingHoursType, updated_at: $updated_at, deleted_at: $deleted_at, company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DCompanyImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.isCurrentlySelectedCompany,
                    isCurrentlySelectedCompany) ||
                other.isCurrentlySelectedCompany ==
                    isCurrentlySelectedCompany) &&
            (identical(other.isUserActive, isUserActive) ||
                other.isUserActive == isUserActive) &&
            const DeepCollectionEquality()
                .equals(other.projectIdLastWorkedOn, projectIdLastWorkedOn) &&
            (identical(other.targetedWorkingHours, targetedWorkingHours) ||
                other.targetedWorkingHours == targetedWorkingHours) &&
            (identical(
                    other.targetedWorkingHoursType, targetedWorkingHoursType) ||
                other.targetedWorkingHoursType == targetedWorkingHoursType) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality()
                .equals(other.deleted_at, deleted_at) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      companyId,
      role,
      position,
      created_at,
      isCurrentlySelectedCompany,
      isUserActive,
      const DeepCollectionEquality().hash(projectIdLastWorkedOn),
      targetedWorkingHours,
      targetedWorkingHoursType,
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(deleted_at),
      company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DCompanyImplCopyWith<_$DCompanyImpl> get copyWith =>
      __$$DCompanyImplCopyWithImpl<_$DCompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DCompanyImplToJson(
      this,
    );
  }
}

abstract class _DCompany implements DCompany {
  const factory _DCompany(
      {final int? userId,
      final int? companyId,
      final String? role,
      final String? position,
      final DateTime? created_at,
      final bool? isCurrentlySelectedCompany,
      final bool? isUserActive,
      final dynamic projectIdLastWorkedOn,
      final int? targetedWorkingHours,
      final String? targetedWorkingHoursType,
      final dynamic updated_at,
      final dynamic deleted_at,
      final Company? company}) = _$DCompanyImpl;

  factory _DCompany.fromJson(Map<String, dynamic> json) =
      _$DCompanyImpl.fromJson;

  @override
  int? get userId;
  @override
  int? get companyId;
  @override
  String? get role;
  @override
  String? get position;
  @override
  DateTime? get created_at;
  @override
  bool? get isCurrentlySelectedCompany;
  @override
  bool? get isUserActive;
  @override
  dynamic get projectIdLastWorkedOn;
  @override
  int? get targetedWorkingHours;
  @override
  String? get targetedWorkingHoursType;
  @override
  dynamic get updated_at;
  @override
  dynamic get deleted_at;
  @override
  Company? get company;
  @override
  @JsonKey(ignore: true)
  _$$DCompanyImplCopyWith<_$DCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  dynamic get deleted_at => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get email => throw _privateConstructorUsedError;
  dynamic get phone => throw _privateConstructorUsedError;
  String? get preferrableWorkStart => throw _privateConstructorUsedError;
  String? get preferrableWorkEnd => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  int? get company_size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {int? id,
      DateTime? created_at,
      DateTime? updated_at,
      dynamic deleted_at,
      String? name,
      dynamic description,
      dynamic email,
      dynamic phone,
      String? preferrableWorkStart,
      String? preferrableWorkEnd,
      String? logo,
      int? company_size});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

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
    Object? email = freezed,
    Object? phone = freezed,
    Object? preferrableWorkStart = freezed,
    Object? preferrableWorkEnd = freezed,
    Object? logo = freezed,
    Object? company_size = freezed,
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
              as DateTime?,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      preferrableWorkStart: freezed == preferrableWorkStart
          ? _value.preferrableWorkStart
          : preferrableWorkStart // ignore: cast_nullable_to_non_nullable
              as String?,
      preferrableWorkEnd: freezed == preferrableWorkEnd
          ? _value.preferrableWorkEnd
          : preferrableWorkEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      company_size: freezed == company_size
          ? _value.company_size
          : company_size // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? created_at,
      DateTime? updated_at,
      dynamic deleted_at,
      String? name,
      dynamic description,
      dynamic email,
      dynamic phone,
      String? preferrableWorkStart,
      String? preferrableWorkEnd,
      String? logo,
      int? company_size});
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
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
    Object? email = freezed,
    Object? phone = freezed,
    Object? preferrableWorkStart = freezed,
    Object? preferrableWorkEnd = freezed,
    Object? logo = freezed,
    Object? company_size = freezed,
  }) {
    return _then(_$CompanyImpl(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      preferrableWorkStart: freezed == preferrableWorkStart
          ? _value.preferrableWorkStart
          : preferrableWorkStart // ignore: cast_nullable_to_non_nullable
              as String?,
      preferrableWorkEnd: freezed == preferrableWorkEnd
          ? _value.preferrableWorkEnd
          : preferrableWorkEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      company_size: freezed == company_size
          ? _value.company_size
          : company_size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl implements _Company {
  const _$CompanyImpl(
      {this.id,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.name,
      this.description,
      this.email,
      this.phone,
      this.preferrableWorkStart,
      this.preferrableWorkEnd,
      this.logo,
      this.company_size});

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final dynamic deleted_at;
  @override
  final String? name;
  @override
  final dynamic description;
  @override
  final dynamic email;
  @override
  final dynamic phone;
  @override
  final String? preferrableWorkStart;
  @override
  final String? preferrableWorkEnd;
  @override
  final String? logo;
  @override
  final int? company_size;

  @override
  String toString() {
    return 'Company(id: $id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, name: $name, description: $description, email: $email, phone: $phone, preferrableWorkStart: $preferrableWorkStart, preferrableWorkEnd: $preferrableWorkEnd, logo: $logo, company_size: $company_size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            const DeepCollectionEquality()
                .equals(other.deleted_at, deleted_at) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            (identical(other.preferrableWorkStart, preferrableWorkStart) ||
                other.preferrableWorkStart == preferrableWorkStart) &&
            (identical(other.preferrableWorkEnd, preferrableWorkEnd) ||
                other.preferrableWorkEnd == preferrableWorkEnd) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.company_size, company_size) ||
                other.company_size == company_size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created_at,
      updated_at,
      const DeepCollectionEquality().hash(deleted_at),
      name,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      preferrableWorkStart,
      preferrableWorkEnd,
      logo,
      company_size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {final int? id,
      final DateTime? created_at,
      final DateTime? updated_at,
      final dynamic deleted_at,
      final String? name,
      final dynamic description,
      final dynamic email,
      final dynamic phone,
      final String? preferrableWorkStart,
      final String? preferrableWorkEnd,
      final String? logo,
      final int? company_size}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  dynamic get deleted_at;
  @override
  String? get name;
  @override
  dynamic get description;
  @override
  dynamic get email;
  @override
  dynamic get phone;
  @override
  String? get preferrableWorkStart;
  @override
  String? get preferrableWorkEnd;
  @override
  String? get logo;
  @override
  int? get company_size;
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
