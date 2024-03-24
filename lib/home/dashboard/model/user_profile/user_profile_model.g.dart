// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileModelImpl _$$UserProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileModelImpl(
      id: json['id'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deleted_at: json['deleted_at'],
      name: json['name'] as String?,
      email: json['email'] as String?,
      previousEmail: json['previousEmail'],
      profile_image: json['profile_image'],
      phone: json['phone'],
      is_verified: json['is_verified'] as bool?,
      isUserOnboardingCompleted: json['isUserOnboardingCompleted'] as bool?,
      onboardingStep: json['onboardingStep'],
      verificationEmailLastSentOn: json['verificationEmailLastSentOn'],
      usersAndCompanies: (json['usersAndCompanies'] as List<dynamic>?)
          ?.map((e) => DCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedCompany: json['selectedCompany'] == null
          ? null
          : DCompany.fromJson(json['selectedCompany'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileModelImplToJson(
        _$UserProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'deleted_at': instance.deleted_at,
      'name': instance.name,
      'email': instance.email,
      'previousEmail': instance.previousEmail,
      'profile_image': instance.profile_image,
      'phone': instance.phone,
      'is_verified': instance.is_verified,
      'isUserOnboardingCompleted': instance.isUserOnboardingCompleted,
      'onboardingStep': instance.onboardingStep,
      'verificationEmailLastSentOn': instance.verificationEmailLastSentOn,
      'usersAndCompanies': instance.usersAndCompanies,
      'selectedCompany': instance.selectedCompany,
    };

_$DCompanyImpl _$$DCompanyImplFromJson(Map<String, dynamic> json) =>
    _$DCompanyImpl(
      userId: json['userId'] as int?,
      companyId: json['companyId'] as int?,
      role: json['role'] as String?,
      position: json['position'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      isCurrentlySelectedCompany: json['isCurrentlySelectedCompany'] as bool?,
      isUserActive: json['isUserActive'] as bool?,
      projectIdLastWorkedOn: json['projectIdLastWorkedOn'],
      targetedWorkingHours: json['targetedWorkingHours'] as int?,
      targetedWorkingHoursType: json['targetedWorkingHoursType'] as String?,
      updated_at: json['updated_at'],
      deleted_at: json['deleted_at'],
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DCompanyImplToJson(_$DCompanyImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'companyId': instance.companyId,
      'role': instance.role,
      'position': instance.position,
      'created_at': instance.created_at?.toIso8601String(),
      'isCurrentlySelectedCompany': instance.isCurrentlySelectedCompany,
      'isUserActive': instance.isUserActive,
      'projectIdLastWorkedOn': instance.projectIdLastWorkedOn,
      'targetedWorkingHours': instance.targetedWorkingHours,
      'targetedWorkingHoursType': instance.targetedWorkingHoursType,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'company': instance.company,
    };

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      id: json['id'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deleted_at: json['deleted_at'],
      name: json['name'] as String?,
      description: json['description'],
      email: json['email'],
      phone: json['phone'],
      preferrableWorkStart: json['preferrableWorkStart'] as String?,
      preferrableWorkEnd: json['preferrableWorkEnd'] as String?,
      logo: json['logo'] as String?,
      company_size: json['company_size'] as int?,
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'deleted_at': instance.deleted_at,
      'name': instance.name,
      'description': instance.description,
      'email': instance.email,
      'phone': instance.phone,
      'preferrableWorkStart': instance.preferrableWorkStart,
      'preferrableWorkEnd': instance.preferrableWorkEnd,
      'logo': instance.logo,
      'company_size': instance.company_size,
    };
