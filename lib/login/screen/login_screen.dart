import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hourtag/cubit/cubit/auth_cubit.dart';
import 'package:hourtag/home/bottom_navigation.dart';
import 'package:hourtag/home/dashboard/model/weekly_shift/weekly_shift_model.dart';
import 'package:hourtag/home/dashboard/repo/dashboard_repo.dart';
import 'package:hourtag/login/cubit/login_cubit.dart';
import 'package:hourtag/login/screen/forget_password.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/functions.dart';
import 'package:hourtag/util/global_style.dart';
import 'package:hourtag/util/weight_constant.dart';
import 'package:hourtag/widgets/custom_button.dart';

import '../../home/dashboard/cubit/dashboard_cubit.dart';
import '../../home/dashboard/model/company_profile/company_profile_model.dart';
import '../../home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';
import '../../home/dashboard/model/team_activity/team_activity_model.dart';
import '../../home/dashboard/model/user_profile/user_profile_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late AuthCubit authCubit;
  late LoginCubit cubit = LoginCubit(authCubit: authCubit);
  @override
  void initState() {
    authCubit = context.read<AuthCubit>();
    super.initState();
  }

  DashboardRepo repo = DashboardRepo();
  final whiteTextStyle = const TextStyle(color: Colors.white);

  void postLoginFunc({required int result}) async {
    if (!context.mounted) {
      return;
    }

    if (result == 1) {
      UserProfileModel data =
          await repo.getDashboardData(authCubit.state.authToken);
      List<TeamActivityModel> teamdata = await repo.getTeamActivity(
          authCubit.state.authToken, data.selectedCompany?.companyId ?? 0);
      OngoingShiftModel ongoingShiftData = await repo.getOngoingShift(
          authCubit.state.authToken, data.selectedCompany?.companyId ?? 0);
      CompanyProfileModel companyData = await repo.getCompanyProfile(
          authCubit.state.authToken, data.selectedCompany?.companyId ?? 0);
      WeeklyShiftModel weeklyShiftModel = await repo.getWeeklyShift(
          authCubit.state.authToken, data.selectedCompany?.companyId ?? 0);
      int index = 0;
      if (ongoingShiftData.ongoingShift != null) {
        index = companyData.projects!.indexWhere((element) =>
            element.id == ongoingShiftData.ongoingShift!.projectId);
      }
      authCubit.updateUserProfileModel(data);
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => BlocProvider(
                    create: (context) => DashboardCubit(
                        teamdata: teamdata,
                        ongoingShiftModel: ongoingShiftData,
                        weeklyShiftModel: weeklyShiftModel,
                        companyProfileModel: companyData,
                        index: index,
                        authCubit: authCubit),
                    child:
                        BottomNavigation(authToken: authCubit.state.authToken),
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = const TextStyle(
        fontSize: 15, fontWeight: FontWeightConstant.bold, color: Colors.white);
    return BlocProvider.value(
      value: cubit,
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            Func.showSnacksBar(
                duration: const Duration(seconds: 4),
                context: context,
                message: state.error.toString(),
                status: SnacksBarStatus.error);
          }
        },
        listenWhen: (previous, current) {
          return current.status != previous.status;
        },
        child: Scaffold(
          backgroundColor: ColorConstant.backgroundColor,
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 120, vertical: 40),
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/logo.svg'),
                    const SizedBox(
                      height: 48,
                    ),
                    Text(
                      'Log into',
                      style: TextStyle(
                          fontSize: 24, color: ColorConstant.textGrey2),
                    ),
                    const Text(
                      'HourTag',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                  controller: emailController,
                  style: whiteTextStyle,
                  decoration: InputDecoration(
                      hintText: 'Email address',
                      hintStyle: AppStyles.borderGreyTextStyle,
                      filled: true,
                      fillColor: ColorConstant.borderFillCOlor,
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)))),
              const SizedBox(
                height: 10,
              ),
              TextField(
                  controller: passwordController,
                  style: whiteTextStyle,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: AppStyles.borderGreyTextStyle,
                      filled: true,
                      fillColor: ColorConstant.borderFillCOlor,
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)))),
              const SizedBox(
                height: 10,
              ),
              BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  return state.status == Status.loading
                      ? Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                              color: ColorConstant.primaryColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: SizedBox(
                            height: 36,
                            child: CupertinoActivityIndicator(
                              color: ColorConstant.backgroundColor,
                            ),
                          )),
                        )
                      : CustomnButton(
                          text: 'Log in',
                          onTap: () async {
                            int result = await context.read<LoginCubit>().login(
                                emailController.text, passwordController.text);
                            postLoginFunc(result: result);
                          },
                        );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgetPassword()));
                },
                child: Text(
                  'Forget password?',
                  style: TextStyle(
                      color: ColorConstant.blue,
                      fontSize: 16,
                      fontWeight: FontWeightConstant.extraBold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: ColorConstant.textGrey,
                      thickness: 2,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    'OR',
                    style: whiteTextStyle,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: Divider(
                      color: ColorConstant.textGrey,
                      thickness: 2,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: BorderedButton(
                      style: textStyle,
                      svg: (Platform.isAndroid)
                          ? null
                          : "assets/icons/google.svg",
                      text: 'Sign in with Google',
                      onTap: () async {
                        int result = await cubit.signInWithGoogle();
                        postLoginFunc(result: result);
                      },
                    ),
                  ),
                  if (Platform.isIOS)
                    const SizedBox(
                      width: 20,
                    ),
                  if (Platform.isIOS)
                    Expanded(
                      child: BorderedButton(
                        style: textStyle,
                        svg: "assets/icons/apple.svg",
                        text: '',
                        onTap: () async {
                          int result = await cubit.signInWithApple();
                          postLoginFunc(result: result);
                        },
                      ),
                    ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Say hi at hello@hourtag.com",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeightConstant.bold,
                        color: ColorConstant.textGrey2),
                  ),
                ),
              )
            ]),
          )),
        ),
      ),
    );
  }
}

class BorderedButton extends StatelessWidget {
  const BorderedButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.style,
      this.svg});
  final String text;
  final TextStyle? style;
  final String? svg;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: (svg != null)
            ? const EdgeInsets.all(10)
            : const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
            border: Border.all(
              color: ColorConstant.primaryColor,
            ),
            borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: (svg != null)
                ? SvgPicture.asset(
                    svg!,
                    height: 40,
                    // ignore: deprecated_member_use
                    color: Colors.white,
                  )
                : Text(
                    text,
                    style: style ??
                        const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeightConstant.bold,
                            color: Colors.white),
                  )),
      ),
    );
  }
}
