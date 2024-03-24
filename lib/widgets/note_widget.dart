import 'package:flutter/material.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.onTap});
  final String hintText;
  final TextEditingController controller;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.68,
          child: TextField(
            controller: controller,
            maxLines: 6,
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
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
            decoration: BoxDecoration(
                color: ColorConstant.primaryColor,
                borderRadius: BorderRadius.circular(12)),
            child: Center(
                child: Text(
              'Send',
              style: TextStyle(
                  color: ColorConstant.borderFillCOlor,
                  fontSize: 17,
                  fontWeight: FontWeightConstant.bold),
            )),
          ),
        )
      ],
    );
  }
}
