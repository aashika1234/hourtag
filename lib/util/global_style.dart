// styles.dart
import 'package:flutter/material.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';

class AppStyles {
  static final TextStyle smallText = TextStyle(
      fontWeight: FontWeightConstant.normal,
      color: ColorConstant.backgroundGrey);

  static final TextStyle darkLargeTextStyle = TextStyle(
      fontSize: 28,
      fontWeight: FontWeightConstant.bold,
      color: ColorConstant.backgroundGrey);

  static final TextStyle lightLargeTextStyle = TextStyle(
      fontSize: 28,
      fontWeight: FontWeightConstant.bold,
      color: ColorConstant.textGrey2);

  static final TextStyle largeDarkText = TextStyle(
      fontSize: 48,
      fontWeight: FontWeightConstant.bold,
      color: ColorConstant.backgroundGrey);

  static final TextStyle largeLightText = TextStyle(
      fontSize: 48,
      fontWeight: FontWeightConstant.bold,
      color: ColorConstant.textGrey2);
  static final TextStyle borderGreyTextStyle = TextStyle(
      color: ColorConstant.borderGrey,
      fontSize: 17,
      fontWeight: FontWeightConstant.bold);
  static final TextStyle headingStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeightConstant.xextraBold,
      color: ColorConstant.backgroundGrey);
  static TextStyle subHeadingStyle = const TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeightConstant.extraBold);
  static final TextStyle buttonTextStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeightConstant.extraBold,
      color: ColorConstant.primaryColor);
  static final TextStyle bottomSheetTextStyle = TextStyle(
      fontSize: 24,
      color: ColorConstant.backgroundGrey,
      fontWeight: FontWeightConstant.xextraBold);
}
