import 'package:flutter/material.dart';
import 'package:hourtag/home/notification/screen/notification_screen.dart';
import 'package:hourtag/login/screen/login_screen.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';
import 'package:hourtag/widgets/custom_button.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BackIcon(),
                      const SizedBox(
                        height: 76,
                      ),
                      Center(
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              color: ColorConstant.primaryColor,
                              borderRadius: BorderRadius.circular(32)),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: ColorConstant.borderFillCOlor,
                          filled: true,
                          hintText: 'Full name',
                          hintStyle: TextStyle(
                              color: ColorConstant.borderGrey,
                              fontSize: 17,
                              fontWeight: FontWeightConstant.normal),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(12)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: ColorConstant.borderFillCOlor,
                          filled: true,
                          hintText: 'Email address',
                          hintStyle: TextStyle(
                              color: ColorConstant.borderGrey,
                              fontSize: 17,
                              fontWeight: FontWeightConstant.normal),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(12)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: ColorConstant.borderFillCOlor,
                          filled: true,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: ColorConstant.borderGrey,
                              fontSize: 17,
                              fontWeight: FontWeightConstant.normal),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(12)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                      const Spacer(),
                      BorderedButton(
                        text: 'Change profile image',
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomnButton(text: 'Save profile', onTap: () {})
                    ]))));
  }
}
