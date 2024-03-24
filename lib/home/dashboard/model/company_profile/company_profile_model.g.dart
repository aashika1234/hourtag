// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyProfileModelImpl _$$CompanyProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyProfileModelImpl(
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
      usersAndCompanies: (json['usersAndCompanies'] as List<dynamic>?)
          ?.map((e) => UsersAndCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      projects: (json['projects'] as List<dynamic>?)
          ?.map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CompanyProfileModelImplToJson(
        _$CompanyProfileModelImpl instance) =>
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
      'usersAndCompanies': instance.usersAndCompanies,
      'projects': instance.projects,
    };

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      id: json['id'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
      deleted_at: json['deleted_at'],
      name: json['name'] as String?,
      description: json['description'],
      colorCode: json['colorCode'] as String?,
      createdByUserId: json['createdByUserId'] as int?,
      companyId: json['companyId'] as int?,
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'name': instance.name,
      'description': instance.description,
      'colorCode': instance.colorCode,
      'createdByUserId': instance.createdByUserId,
      'companyId': instance.companyId,
    };

_$UsersAndCompanyImpl _$$UsersAndCompanyImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersAndCompanyImpl(
      userId: json['userId'] as int?,
      companyId: json['companyId'] as int?,
      role: json['role'] as String?,
      position: json['position'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      isCurrentlySelectedCompany: json['isCurrentlySelectedCompany'] as bool?,
      isUserActive: json['isUserActive'] as bool?,
      projectIdLastWorkedOn: json['projectIdLastWorkedOn'] as int?,
      targetedWorkingHours: json['targetedWorkingHours'] as int?,
      targetedWorkingHoursType: json['targetedWorkingHoursType'] as String?,
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deleted_at: json['deleted_at'],
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UsersAndCompanyImplToJson(
        _$UsersAndCompanyImpl instance) =>
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
      'updated_at': instance.updated_at?.toIso8601String(),
      'deleted_at': instance.deleted_at,
      'user': instance.user,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
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
      previousEmail: json['previousEmail'] as String?,
      profileImage: json['profileImage'] as String?,
      phone: json['phone'],
      is_verified: json['is_verified'] as bool?,
      isUserOnboardingCompleted: json['isUserOnboardingCompleted'] as bool?,
      onboardingStep: json['onboardingStep'],
      verificationEmailLastSentOn: json['verificationEmailLastSentOn'] == null
          ? null
          : DateTime.parse(json['verificationEmailLastSentOn'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'deleted_at': instance.deleted_at,
      'name': instance.name,
      'email': instance.email,
      'previousEmail': instance.previousEmail,
      'profileImage': instance.profileImage,
      'phone': instance.phone,
      'is_verified': instance.is_verified,
      'isUserOnboardingCompleted': instance.isUserOnboardingCompleted,
      'onboardingStep': instance.onboardingStep,
      'verificationEmailLastSentOn':
          instance.verificationEmailLastSentOn?.toIso8601String(),
    };
