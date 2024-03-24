import 'package:flutter/material.dart';
import 'dart:math';

import 'package:hourtag/util/color_constant.dart';

class CircleProgressIndicator extends StatelessWidget {
  final double progress;
  final Color textColor;
  const CircleProgressIndicator({
    Key? key,
    required this.progress,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: CircleProgressPainter(progress),
      child: Container(
        width: 42,
        height: 42,
        alignment: Alignment.center,
        child: Text(
          '${progress.toInt()}%',
          style: TextStyle(
            color: textColor,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}

class CircleProgressPainter extends CustomPainter {
  final double currentProgress;

  CircleProgressPainter(this.currentProgress);

  @override
  void paint(Canvas canvas, Size size) {
    Paint outerCircle = Paint()
      ..strokeWidth = 5 // Reduced stroke width for the smaller widget
      ..color = const Color.fromRGBO(253, 100, 20, 0.2)
      ..style = PaintingStyle.stroke;

    Paint completeArc = Paint()
      ..strokeWidth = 5 // Reduced stroke width for the smaller widget
      ..color = ColorConstant.orange
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2) -
        3; // Adjust radius based on the stroke width

    // Draw the entire circle (the background of the progress)
    canvas.drawCircle(center, radius, outerCircle);

    // Calculate the angle for the current progress
    double angle = 2 * pi * (currentProgress / 100);

    // Start from the bottom (180 degrees rotation from the top)
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), pi / 2,
        angle, false, completeArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
