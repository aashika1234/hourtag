// To parse this JSON data, do
//
//     final companyProfileModel = companyProfileModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'company_profile_model.freezed.dart';
part 'company_profile_model.g.dart';

CompanyProfileModel companyProfileModelFromJson(String str) =>
    CompanyProfileModel.fromJson(json.decode(str));

String companyProfileModelToJson(CompanyProfileModel data) =>
    json.encode(data.toJson());

@freezed
class CompanyProfileModel with _$CompanyProfileModel {
  const factory CompanyProfileModel({
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
    List<UsersAndCompany>? usersAndCompanies,
    List<Project>? projects,
  }) = _CompanyProfileModel;

  factory CompanyProfileModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyProfileModelFromJson(json);
}

@freezed
class Project with _$Project {
  const factory Project({
    int? id,
    DateTime? created_at,
    dynamic updated_at,
    dynamic deleted_at,
    String? name,
    dynamic description,
    String? colorCode,
    int? createdByUserId,
    int? companyId,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}

@freezed
class UsersAndCompany with _$UsersAndCompany {
  const factory UsersAndCompany({
    int? userId,
    int? companyId,
    String? role,
    String? position,
    DateTime? created_at,
    bool? isCurrentlySelectedCompany,
    bool? isUserActive,
    int? projectIdLastWorkedOn,
    int? targetedWorkingHours,
    String? targetedWorkingHoursType,
    DateTime? updated_at,
    dynamic deleted_at,
    User? user,
  }) = _UsersAndCompany;

  factory UsersAndCompany.fromJson(Map<String, dynamic> json) =>
      _$UsersAndCompanyFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    int? id,
    DateTime? created_at,
    DateTime? updated_at,
    dynamic deleted_at,
    String? name,
    String? email,
    String? previousEmail,
    String? profileImage,
    dynamic phone,
    bool? is_verified,
    bool? isUserOnboardingCompleted,
    dynamic onboardingStep,
    DateTime? verificationEmailLastSentOn,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
