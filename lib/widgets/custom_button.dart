import 'package:flutter/material.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';

class CustomnButton extends StatelessWidget {
  const CustomnButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
            color: ColorConstant.primaryColor,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: ColorConstant.borderFillCOlor,
                fontSize: 17,
                fontWeight: FontWeightConstant.bold),
          ),
        ),
      ),
    );
  }
}
