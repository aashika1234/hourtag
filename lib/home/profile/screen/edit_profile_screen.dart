// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourtag/const/api_const.dart';
import 'package:hourtag/cubit/cubit/auth_cubit.dart';
import 'package:hourtag/home/notification/screen/notification_screen.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/functions.dart';
import 'package:hourtag/util/weight_constant.dart';
import 'package:hourtag/widgets/custom_button.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final ValueNotifier<bool> obscureText = ValueNotifier<bool>(true);
  var textStyle = TextStyle(
      color: ColorConstant.backgroundGrey,
      fontSize: 17,
      fontWeight: FontWeightConstant.normal);

  late final AuthCubit authCubit = context.read<AuthCubit>();
  late TextEditingController nameController =
      TextEditingController(text: authCubit.state.userProfileModel?.name ?? '');
  late TextEditingController emailController = TextEditingController(
      text: authCubit.state.userProfileModel?.email ?? '');
  late TextEditingController passwordController = TextEditingController();
  final ImagePicker picker = ImagePicker();

  void pickImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      authCubit.addTempImage(image);
    }
  }

  final ValueNotifier<bool> loading = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const BackIcon(),
                                const SizedBox(
                                  height: 76,
                                ),
                                Center(
                                  child: BlocBuilder<AuthCubit, AuthState>(
                                    builder: (context, state) {
                                      String image = state.userProfileModel
                                              ?.profile_image ??
                                          '';
                                      return InkWell(
                                        onTap: pickImage,
                                        child: Container(
                                          height: 120,
                                          width: 120,
                                          decoration: BoxDecoration(
                                              color: ColorConstant.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(32)),
                                          child: image.isEmpty
                                              ? const Icon(
                                                  CupertinoIcons
                                                      .profile_circled,
                                                  size: 60,
                                                )
                                              : ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(32),
                                                  child: state.tempImage != null
                                                      ? Image.file(
                                                          File(state
                                                              .tempImage!.path),
                                                          fit: BoxFit.cover,
                                                        )
                                                      : CachedNetworkImage(
                                                          progressIndicatorBuilder:
                                                              (context, url,
                                                                      progress) =>
                                                                  const Center(
                                                            child:
                                                                CupertinoActivityIndicator(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                          imageUrl: image
                                                                  .startsWith(
                                                                      "https")
                                                              ? image
                                                              : "${ApiContants.imageBaseUrl}$image",
                                                          fit: BoxFit.cover,
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              const Icon(
                                                            CupertinoIcons
                                                                .profile_circled,
                                                            size: 60,
                                                          ),
                                                        ),
                                                ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Center(
                                    child: Text(
                                  'Click to edit',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: ColorConstant.textGrey2),
                                )),
                                const SizedBox(
                                  height: 80,
                                ),
                                TextField(
                                  controller: nameController,
                                  style: textStyle,
                                  decoration: InputDecoration(
                                    fillColor: ColorConstant.borderFillCOlor,
                                    filled: true,
                                    hintText: 'Full name',
                                    hintStyle: TextStyle(
                                        color: ColorConstant.borderGrey,
                                        fontSize: 17,
                                        fontWeight: FontWeightConstant.normal),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  controller: emailController,
                                  style: textStyle,
                                  decoration: InputDecoration(
                                    fillColor: ColorConstant.borderFillCOlor,
                                    filled: true,
                                    hintText: 'Email address',
                                    hintStyle: TextStyle(
                                        color: ColorConstant.borderGrey,
                                        fontSize: 17,
                                        fontWeight: FontWeightConstant.normal),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ValueListenableBuilder<bool>(
                                  valueListenable: obscureText,
                                  builder: (BuildContext context, dynamic value,
                                      Widget? child) {
                                    return TextField(
                                      controller: passwordController,
                                      obscureText: value,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        suffixIcon: InkWell(
                                            onTap: () {
                                              obscureText.value =
                                                  !obscureText.value;
                                            },
                                            child: const Icon(
                                                Icons.remove_red_eye)),
                                        fillColor:
                                            ColorConstant.borderFillCOlor,
                                        filled: true,
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                            color: ColorConstant.borderGrey,
                                            fontSize: 17,
                                            fontWeight:
                                                FontWeightConstant.normal),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.transparent),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                              ]),
                        ),
                        ValueListenableBuilder<bool>(
                          valueListenable: loading,
                          builder: (BuildContext context, dynamic value,
                              Widget? child) {
                            return CustomnButton(
                                loading: value,
                                text: 'Save profile',
                                onTap: () async {
                                  try {
                                    loading.value = true;
                                    await authCubit.updateProfile(
                                        name: nameController.text,
                                        email: emailController.text,
                                        password: passwordController.text);
                                    loading.value = false;
                                    Navigator.pop(context);
                                    Func.showSnacksBar(
                                        message:
                                            "Profile Updated Successfully!",
                                        context: context,
                                        status: SnacksBarStatus.success);
                                  } catch (e) {
                                    loading.value = false;
                                    Func.showSnacksBar(
                                        message: e.toString(),
                                        context: context,
                                        status: SnacksBarStatus.error);
                                  }
                                });
                          },
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
