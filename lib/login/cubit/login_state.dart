part of 'login_cubit.dart';

enum Status { loading, loaded, error }

class LoginState {
  final String username;
  final String password;
  final Status status;
  final String error;
  LoginState(
      {required this.username,
      required this.password,
      required this.status,
      required this.error});
  List<Object?> get props => [username, password, status, error];
  factory LoginState.initial() {
    return LoginState(
        username: '', password: '', status: Status.loaded, error: '');
  }
  LoginState copyWith({
    String? username,
    String? password,
    Status? status,
    String? error,
  }) {
    return LoginState(
        username: username ?? this.username,
        password: password ?? this.password,
        status: status ?? this.status,
        error: error ?? this.error);
  }
}
