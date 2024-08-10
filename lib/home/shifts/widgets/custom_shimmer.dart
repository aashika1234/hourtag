import 'package:flutter/material.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  final double height;
  final double width;
  const CustomShimmer({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      loop: 3,
      baseColor: ColorConstant.borderFillCOlor,
      highlightColor: ColorConstant.borderFillCOlor.withOpacity(0.7),
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: ColorConstant.borderFillCOlor,
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
