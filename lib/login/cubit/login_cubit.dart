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
      String token = await repo.login(username, password);
      authCubit.updateAuthToken(token);
      print('Successful');
      return 1;
    } catch (e) {
      print('erorr occured');
      return 0;
    }
  }
}
