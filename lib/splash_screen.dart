import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hourtag/cubit/cubit/auth_cubit.dart';
import 'package:hourtag/home/bottom_navigation.dart';
import 'package:hourtag/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:hourtag/home/dashboard/model/company_profile/company_profile_model.dart';
import 'package:hourtag/home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';
import 'package:hourtag/home/dashboard/model/team_activity/team_activity_model.dart';
import 'package:hourtag/home/dashboard/model/user_profile/user_profile_model.dart';
import 'package:hourtag/home/dashboard/model/weekly_shift/weekly_shift_model.dart';

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
        UserProfileModel data =
            await repo.getDashboardData(cubit.state.authToken);
        List<TeamActivityModel> teamdata = await repo.getTeamActivity(
            cubit.state.authToken, data.selectedCompany?.companyId ?? 0);
        OngoingShiftModel ongoingShiftData = await repo.getOngoingShift(
            cubit.state.authToken, data.selectedCompany?.companyId ?? 0);
        CompanyProfileModel companyData = await repo.getCompanyProfile(
            cubit.state.authToken, data.selectedCompany?.companyId ?? 0);
        WeeklyShiftModel weeklyShiftModel = await repo.getWeeklyShift(
            cubit.state.authToken, data.selectedCompany?.companyId ?? 0);
        int index = 0;
        if (ongoingShiftData.ongoingShift != null) {
          index = companyData.projects!.indexWhere((element) =>
              element.id == ongoingShiftData.ongoingShift!.projectId);
        }
        if (!context.mounted) {
          return;
        }

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => BlocProvider(
                    create: (context) => DashboardCubit(cubit.state.authToken,
                        index: index,
                        teamdata: teamdata,
                        weeklyShiftModel: weeklyShiftModel,
                        ongoingShiftModel: ongoingShiftData,
                        companyProfileModel: companyData,
                        userProfileModel: data),
                    child: BottomNavigation(authToken: cubit.state.authToken),
                  )),
        );
      } catch (e) {
        print(e.toString());
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
