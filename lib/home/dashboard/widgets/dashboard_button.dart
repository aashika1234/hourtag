import 'package:flutter/material.dart';
import 'package:hourtag/util/weight_constant.dart';

class DashboardButton extends StatelessWidget {
  const DashboardButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.containerColor,
      required this.textColor});
  final String text;
  final Icon icon;
  final Color containerColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(
            width: 2,
          ),
          Text(
            text,
            style: TextStyle(
                color: textColor,
                fontSize: 17,
                fontWeight: FontWeightConstant.bold),
          ),
        ],
      ),
    );
  }
}
