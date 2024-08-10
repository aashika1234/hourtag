import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourtag/const/api_const.dart';
import 'package:hourtag/cubit/cubit/auth_cubit.dart';
import 'package:hourtag/home/notification/screen/notification_screen.dart';
import 'package:hourtag/home/profile/screen/edit_profile_Screen.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../login/screen/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Column(children: [
          Row(
            children: [
              const BackIcon(),
              const SizedBox(
                width: 16,
              ),
              Text(
                'Profile',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeightConstant.normal,
                    color: ColorConstant.borderGrey),
              )
            ],
          ),
          const SizedBox(
            height: 85,
          ),
          BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              String image = state.userProfileModel?.profile_image ?? '';
              return Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: ColorConstant.primaryColor,
                    borderRadius: BorderRadius.circular(32)),
                child: image.isEmpty
                    ? const Icon(
                        CupertinoIcons.profile_circled,
                        size: 60,
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: CachedNetworkImage(
                          progressIndicatorBuilder: (context, url, progress) =>
                              const Center(
                            child: CupertinoActivityIndicator(
                              color: Colors.white,
                            ),
                          ),
                          imageUrl: image.startsWith("https")
                              ? image
                              : "${ApiContants.imageBaseUrl}$image",
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => const Icon(
                            CupertinoIcons.profile_circled,
                            size: 60,
                          ),
                        ),
                      ),
              );
            },
          ),
          const SizedBox(
            height: 36,
          ),
          BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              String name = state.userProfileModel?.name ?? '';
              if (name.isEmpty) {
                return const SizedBox();
              }
              return Text(
                name,
                style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeightConstant.xextraBold,
                    color: Colors.white),
              );
            },
          ),
          const SizedBox(
            height: 8,
          ),
          BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              String email = state.userProfileModel?.email ?? '';
              if (email.isEmpty) {
                return const SizedBox();
              }
              return Text(
                email,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeightConstant.normal,
                    color: ColorConstant.textGrey2),
              );
            },
          ),
          const Spacer(),
          Text(
            'Want to log out?',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeightConstant.bold,
                color: ColorConstant.textGrey2),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showCupertinoDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                        title: const Text('Log out'),
                        content:
                            const Text('Are you sure you want to log out?'),
                        actions: [
                          CupertinoDialogAction(
                            child: Text(
                              'No',
                              style: TextStyle(
                                  color: ColorConstant.cblue,
                                  fontWeight: FontWeightConstant.extraBold),
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                          CupertinoDialogAction(
                            onPressed: () async {
                              final SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.remove('access_token');
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const LoginScreen()),
                                  ModalRoute.withName('/'));
                            },
                            child: Text(
                              'Yes',
                              style: TextStyle(
                                  color: ColorConstant.cblue,
                                  fontWeight: FontWeightConstant.extraBold),
                            ),
                          )
                        ],
                      ));
            },
            child: Text(
              'Log out',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeightConstant.xextraBold,
                  color: ColorConstant.textGrey2,
                  decoration: TextDecoration.underline,
                  decorationColor: ColorConstant.textGrey2),
            ),
          ),
          const SizedBox(
            height: 53,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EditProfileScreen()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstant.primaryColor),
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                child: Text(
                  'Edit profile',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeightConstant.normal,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ]),
      )),
    );
  }
}
