import 'package:bloc/bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final String authToken;
  AuthCubit(this.authToken) : super(AuthState(authToken: authToken));
  void updateAuthToken(String token) {
    emit(state.copyWith(authToken: token));
  }
}
