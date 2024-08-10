import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';

class CustomnButton extends StatelessWidget {
  const CustomnButton({
    super.key,
    required this.text,
    required this.onTap,
    this.loading,
    this.padding,
  });
  final String text;
  final EdgeInsetsGeometry? padding;
  final void Function() onTap;
  final bool? loading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding ?? const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
            color: ColorConstant.primaryColor,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: loading == true
              ? const SizedBox(height: 24, child: CupertinoActivityIndicator())
              : Text(
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
