// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_cubit.dart';

class AuthState {
  final String authToken;
  AuthState({
    required this.authToken,
  });
  List<Object?> get props => [authToken];
  factory AuthState.initial(String authToken) {
    return AuthState(authToken: authToken);
  }
  AuthState copyWith({
    String? authToken,
  }) {
    return AuthState(
      authToken: authToken ?? this.authToken,
    );
  }
}
