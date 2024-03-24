import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hourtag/cubit/cubit/auth_cubit.dart';
import 'package:hourtag/home/bottom_navigation.dart';
import 'package:hourtag/login/cubit/login_cubit.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/global_style.dart';
import 'package:hourtag/util/weight_constant.dart';
import 'package:hourtag/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController =
      TextEditingController(text: "myhourtag@gmail.com");
  TextEditingController passwordController =
      TextEditingController(text: "HelloWorld123");
  late AuthCubit authCubit;
  @override
  void initState() {
    authCubit = context.read<AuthCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const whiteTextStyle = TextStyle(color: Colors.white);
    LoginCubit cubit = LoginCubit(authCubit: context.read<AuthCubit>());
    return BlocProvider.value(
      value: cubit,
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
                    style:
                        TextStyle(fontSize: 24, color: ColorConstant.textGrey2),
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
                return CustomnButton(
                  text: 'Log in',
                  onTap: () async {
                    int result = await context
                        .read<LoginCubit>()
                        .login(emailController.text, passwordController.text);

                    if (!context.mounted) {
                      return;
                    }

                    if (result == 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigation(
                                authToken: authCubit.state.authToken)),
                      );
                    } else {
                      final snackBar = SnackBar(
                        backgroundColor: ColorConstant
                            .red, // Use your constant color directly
                        content: const Text(
                          'Invalid credentials',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color:
                                  Colors.white), // Optional: adjust text style
                        ),
                        behavior: SnackBarBehavior.floating,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Forget password?',
              style: TextStyle(
                  color: ColorConstant.blue,
                  fontSize: 16,
                  fontWeight: FontWeightConstant.extraBold),
            ),
            const SizedBox(
              height: 10,
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
                const Text(
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
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorConstant.primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                  child: Text(
                'Sign in with Google',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeightConstant.bold,
                    color: Colors.white),
              )),
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
    );
  }
}
