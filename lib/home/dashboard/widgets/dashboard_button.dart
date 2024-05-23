import 'package:flutter/material.dart';

class DashboardButton extends StatelessWidget {
  const DashboardButton({
    super.key,
    required this.widget,
    this.icon,
    required this.containerColor,
  });
  final Widget widget;
  final Icon? icon;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon ?? const SizedBox(),
          const SizedBox(
            width: 2,
          ),
          widget
        ],
      ),
    );
  }
}
