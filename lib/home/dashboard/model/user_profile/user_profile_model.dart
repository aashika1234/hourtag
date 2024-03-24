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

@freezed
class DCompany with _$DCompany {
  const factory DCompany({
    int? userId,
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
    Company? company,
  }) = _DCompany;

  factory DCompany.fromJson(Map<String, dynamic> json) =>
      _$DCompanyFromJson(json);
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
