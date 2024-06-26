import 'package:bloc/bloc.dart';
import 'package:hourtag/cubit/cubit/auth_cubit.dart';
import 'package:hourtag/login/repo/login_repo.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.authCubit}) : super(LoginState.initial());
  LoginRepo repo = LoginRepo();
  final AuthCubit authCubit;
  Future<int> login(String username, String password) async {
    try {
      emit(state.copyWith(status: Status.loading));
      String token = await repo.login(username, password);
      authCubit.updateAuthToken(token);
      print('Here is the token  $token');
      print('Successful');
      emit(state.copyWith(status: Status.loaded));
      return 1;
    } catch (e) {
      print('erorr occured');
      return 0;
    }
  }
}
