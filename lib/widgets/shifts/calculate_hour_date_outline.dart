import 'package:flutter/material.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';

class CalculateHourDateOutline extends StatelessWidget {
  const CalculateHourDateOutline({
    super.key,
    required this.title,
    required this.date,
  });
  final String title;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeightConstant.bold,
              color: ColorConstant.backgroundGrey),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          decoration: BoxDecoration(
              color: ColorConstant.containerBackground,
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              date,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeightConstant.normal),
            ),
          ),
        ),
      ],
    );
  }
}
