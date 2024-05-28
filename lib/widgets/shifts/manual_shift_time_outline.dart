import 'package:flutter/material.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';

class ManualShiftTimeOutline extends StatelessWidget {
  const ManualShiftTimeOutline(
      {super.key,
      required this.topic,
      required this.date,
      required this.time,
      required this.onDateTap,
      required this.onTimeTap});
  final String topic;
  final String date;
  final String time;
  final void Function()? onDateTap;
  final void Function()? onTimeTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          topic,
          style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeightConstant.bold,
              color: ColorConstant.backgroundGrey),
        ),
        Row(
          children: [
            InkWell(
              onTap: onDateTap,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
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
            ),
            const SizedBox(
              width: 8,
            ),
            InkWell(
              onTap: onTimeTap,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                decoration: BoxDecoration(
                    color: ColorConstant.containerBackground,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    time,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeightConstant.normal),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
