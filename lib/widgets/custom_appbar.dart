import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          SizedBox(
              height: 24.5,
              width: 20,
              child: SvgPicture.asset('assets/icons/logo.svg')),
          const SizedBox(
            width: 10,
          ),
          const Text('HourTag',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeightConstant.extraBold))
        ],
      ),
      Container(
        height: 34,
        width: 34,
        decoration: BoxDecoration(
            color: ColorConstant.backgroundGrey,
            borderRadius: BorderRadius.circular(20)),
      )
    ]);
  }
}
