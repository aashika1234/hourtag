import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hourtag/cubit/cubit/auth_cubit.dart';
import 'package:hourtag/home/bottom_navigation.dart';

import 'package:hourtag/home/dashboard/repo/dashboard_repo.dart';
import 'package:hourtag/login/screen/login_screen.dart';
import 'package:hourtag/util/color_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late AuthCubit cubit;
  Future<void> checkIfAuthenticated() async {
    DashboardRepo repo = DashboardRepo();

    if (cubit.state.authToken.isEmpty) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    } else {
      try {
        // UserProfileModel userProfileModel =
        await repo.getDashboardData(cubit.state.authToken);
        if (!context.mounted) {
          return;
        }
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  BottomNavigation(authToken: cubit.state.authToken)),
        );
      } catch (e) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();
    cubit = context.read<AuthCubit>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkIfAuthenticated();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: Center(
        child: SvgPicture.asset('assets/icons/logo.svg'),
      ),
    );
  }
}
