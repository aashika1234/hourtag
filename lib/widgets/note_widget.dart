import 'package:flutter/material.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget(
      {super.key,
      required this.hintText,
      this.readOnly,
      required this.controller,
      required this.onTap,
      required this.max});
  final String hintText;
  final TextEditingController controller;
  final void Function() onTap;
  final bool? readOnly;
  final int max;
  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly ?? false,
      controller: controller,
      style: TextStyle(
          color: ColorConstant.textGrey2,
          fontWeight: FontWeightConstant.normal),
      maxLines: max,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.black,
        hintText: hintText,
        hintStyle: TextStyle(
            color: ColorConstant.textGrey2,
            fontWeight: FontWeightConstant.normal),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
