// To parse this JSON data, do
//
//     final userProfileModel = userProfileModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

UserProfileModel userProfileModelFromJson(String str) =>
    UserProfileModel.fromJson(json.decode(str));

String userProfileModelToJson(UserProfileModel data) =>
    json.encode(data.toJson());

@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    int? id,
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
    DCompany? selectedCompany,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}

class DCompany {
  int? userId;
  int? companyId;
  String? role;
  String? position;
  DateTime? createdAt;
  bool? isCurrentlySelectedCompany;
  bool? isUserActive;
  dynamic projectIdLastWorkedOn;
  int? targetedWorkingHours;
  String? targetedWorkingHoursType;
  dynamic updatedAt;
  dynamic deletedAt;
  Company? company;

  DCompany({
    this.userId,
    this.companyId,
    this.role,
    this.position,
    this.createdAt,
    this.isCurrentlySelectedCompany,
    this.isUserActive,
    this.projectIdLastWorkedOn,
    this.targetedWorkingHours,
    String? targetedWorkingHoursType,
    this.updatedAt,
    this.deletedAt,
    this.company,
  }) : targetedWorkingHoursType = targetedWorkingHoursType == 'NONE'
            ? null
            : targetedWorkingHoursType;

  factory DCompany.fromJson(Map<String, dynamic> json) {
    return DCompany(
      userId: json['userId'] as int?,
      companyId: json['companyId'] as int?,
      role: json['role'] as String?,
      position: json['position'] as String?,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      isCurrentlySelectedCompany: json['isCurrentlySelectedCompany'] as bool?,
      isUserActive: json['isUserActive'] as bool?,
      projectIdLastWorkedOn: json['projectIdLastWorkedOn'],
      targetedWorkingHours: json['targetedWorkingHours'] as int?,
      targetedWorkingHoursType: json['targetedWorkingHoursType'] == 'NONE'
          ? null
          : json['targetedWorkingHoursType'] as String?,
      updatedAt: json['updated_at'],
      deletedAt: json['deleted_at'],
      company: json['company'] != null
          ? Company.fromJson(json['company'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'companyId': companyId,
      'role': role,
      'position': position,
      'created_at': createdAt?.toIso8601String(),
      'isCurrentlySelectedCompany': isCurrentlySelectedCompany,
      'isUserActive': isUserActive,
      'projectIdLastWorkedOn': projectIdLastWorkedOn,
      'targetedWorkingHours': targetedWorkingHours,
      'targetedWorkingHoursType': targetedWorkingHoursType,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
      'company': company?.toJson(),
    };
  }
}

@freezed
class Company with _$Company {
  const factory Company({
    int? id,
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
    int? company_size,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
