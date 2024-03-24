// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_cubit.dart';

class LoginState {
  final String username;
  final String password;
  LoginState({
    required this.username,
    required this.password,
  });
  List<Object?> get props => [username, password];
  factory LoginState.initial() {
    return LoginState(username: '', password: '');
  }
  LoginState copyWith({
    String? username,
    String? password,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }
}
