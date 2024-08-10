// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_cubit.dart';

class AuthState {
  final String authToken;
  final UserProfileModel? userProfileModel;
  final XFile? tempImage;
  AuthState({
    required this.authToken,
    this.userProfileModel,
    this.tempImage,
  });
  List<Object?> get props => [authToken, userProfileModel, tempImage];
  factory AuthState.initial(
      String authToken, UserProfileModel userProfileModel) {
    return AuthState(authToken: authToken, userProfileModel: userProfileModel);
  }
  AuthState copyWith({
    String? authToken,
    UserProfileModel? userProfileModel,
    XFile? tempImage,
  }) {
    return AuthState(
      authToken: authToken ?? this.authToken,
      userProfileModel: userProfileModel ?? this.userProfileModel,
      tempImage: tempImage ?? this.tempImage,
    );
  }
}
