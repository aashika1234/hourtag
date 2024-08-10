import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:hourtag/home/dashboard/model/user_profile/user_profile_model.dart';
import 'package:hourtag/home/dashboard/repo/dashboard_repo.dart';
import 'package:image_picker/image_picker.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(String authToken, UserProfileModel? userProfileModel)
      : super(AuthState(authToken: authToken));
  DashboardRepo repo = DashboardRepo();
  void updateAuthToken(String token) async {
    emit(state.copyWith(authToken: token));
  }

  // audate user profile model
  void updateUserProfileModel(UserProfileModel userProfileModel) async {
    emit(state.copyWith(userProfileModel: userProfileModel));
  }

  //add Temp image
  void addTempImage(XFile image) async {
    emit(state.copyWith(tempImage: image));
  }

  Future<void> updateProfile(
      {required String name, required String email, String? password}) async {
    try {
      FormData formData = FormData.fromMap({
        if (state.tempImage != null)
          'profileImage': await MultipartFile.fromFile(
            state.tempImage!.path,
            filename: '${state.tempImage?.name}',
            contentType:
                DioMediaType('image', 'jpeg'), // Adjust content type as needed
          ),
        'email': email,
        'name': name,
        if ("$password" != "null" && password!.isNotEmpty) 'password': password
      });

      bool updated = await repo.updateProfile(formData, state.authToken);
      if (updated) {
        UserProfileModel data = await repo.getDashboardData(state.authToken);
        emit(AuthState(
            authToken: state.authToken,
            userProfileModel: data,
            tempImage: null));
      }
    } catch (e) {
      emit(AuthState(
          authToken: state.authToken,
          userProfileModel: state.userProfileModel,
          tempImage: null));
      rethrow;
    }
  }
}
