import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hourtag/const/api_const.dart';
import 'package:hourtag/const/common_dio.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class LoginRepo {
  Future<String> login(String username, String password) async {
    try {
      Response res = await dio.post(
        '${ApiContants.baseUrl}/auth/login',
        data: {
          "email": username,
          "password": password,
        },
      );
      String accessToken = res.data['access_token'];
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('access_token', accessToken);
      return accessToken;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<String> signInWithApple() async {
    try {
      final credentials = await SignInWithApple.getAppleIDCredential(scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ]);
      final oauthCredential = OAuthProvider('apple.com').credential(
        idToken: credentials.identityToken,
        accessToken: credentials.authorizationCode,
      );
      final userCrediential =
          await FirebaseAuth.instance.signInWithCredential(oauthCredential);
      String? idToken = await userCrediential.user!.getIdToken();
      if (idToken == null) {
        throw Exception("An unknown error occurred");
      }
      Response response = await dio.post(
          '${ApiContants.baseUrl}/auth/login-with-firebase',
          data: {"firebaseToken": idToken, "is_mobile": true});
      String accessToken = response.data['access_token'];
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('access_token', accessToken);
      return accessToken;
    } on DioException catch (e) {
      throw Exception(e.toString());
    } on SignInWithAppleAuthorizationException catch (e) {
      throw Exception(e.message);
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message ?? 'An unknown error occurred');
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<String> signInWithGoogle() async {
    try {
      final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
      final GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      final GoogleSignInAuthentication? googleSignInAuthentication =
          await googleSignInAccount?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication?.idToken,
          accessToken: googleSignInAuthentication?.accessToken);

      UserCredential userCrediential =
          await firebaseAuth.signInWithCredential(credential);
      String? idToken = await userCrediential.user!.getIdToken();
      if (idToken == null) {
        throw Exception("An unknown error occurred");
      }
      Response response = await dio.post(
          '${ApiContants.baseUrl}/auth/login-with-firebase',
          data: {"firebaseToken": idToken, "is_mobile": true});
      String accessToken = response.data['access_token'];
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('access_token', accessToken);
      return accessToken;
    } on DioException catch (e) {
      throw Exception(e.toString());
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message ?? 'An unknown error occurred');
    } on FirebaseException catch (e) {
      throw Exception(e.message ?? 'An unknown error occurred');
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
