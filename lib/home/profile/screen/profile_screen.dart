import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hourtag/home/notification/screen/notification_screen.dart';
import 'package:hourtag/home/profile/screen/edit_profile_Screen.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

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
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: ColorConstant.primaryColor,
                borderRadius: BorderRadius.circular(32)),
          ),
          const SizedBox(
            height: 36,
          ),
          const Text(
            'Jane Doe',
            style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeightConstant.xextraBold,
                color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'jane@gmail.com',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeightConstant.normal,
                color: ColorConstant.textGrey2),
          ),
          Spacer(),
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
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EditProfileScreen())),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstant.primaryColor),
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                child: Text(
                  'Edit porfile',
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
