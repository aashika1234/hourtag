// To parse this JSON data, do
//
//     final teamActivityModel = teamActivityModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'team_activity_model.freezed.dart';
part 'team_activity_model.g.dart';

List<TeamActivityModel> teamActivityModelFromJson(String str) =>
    List<TeamActivityModel>.from(
        json.decode(str).map((x) => TeamActivityModel.fromJson(x)));

String teamActivityModelToJson(List<TeamActivityModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class TeamActivityModel with _$TeamActivityModel {
  const factory TeamActivityModel({
    User? user,
    TotalShiftTime? total_shift_time,
  }) = _TeamActivityModel;

  factory TeamActivityModel.fromJson(Map<String, dynamic> json) =>
      _$TeamActivityModelFromJson(json);
}

@freezed
class TotalShiftTime with _$TotalShiftTime {
  const factory TotalShiftTime({
    int? hours,
    int? minutes,
    int? seconds,
  }) = _TotalShiftTime;

  factory TotalShiftTime.fromJson(Map<String, dynamic> json) =>
      _$TotalShiftTimeFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    int? id,
    String? email,
    String? name,
    bool? isUserActive,
    String? profile_image,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
