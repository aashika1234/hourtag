part of 'login_cubit.dart';

class LoginState {
  final String username;
  final String password;
  final Status status;
  LoginState(
      {required this.username, required this.password, required this.status});
  List<Object?> get props => [username, password, status];
  factory LoginState.initial() {
    return LoginState(username: '', password: '', status: Status.loaded);
  }
  LoginState copyWith({
    String? username,
    String? password,
    Status? status,
  }) {
    return LoginState(
        username: username ?? this.username,
        password: password ?? this.password,
        status: status ?? this.status);
  }
}
