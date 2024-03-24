import 'package:flutter/widgets.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';

class ActivityCart extends StatelessWidget {
  const ActivityCart({
    super.key,
    required this.subHeadingStyle,
    required this.period,
    required this.date,
    required this.hour,
    required this.minute,
  });
  final String period;
  final String date;
  final String hour;
  final String minute;
  final TextStyle subHeadingStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: ColorConstant.borderFillCOlor,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            period,
            style: subHeadingStyle,
          ),
          Text(
            date,
            style: TextStyle(
                fontWeight: FontWeightConstant.normal,
                color: ColorConstant.backgroundGrey),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                hour,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeightConstant.extraBold,
                    color: ColorConstant.backgroundGrey),
              ),
              Text(
                'h',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeightConstant.extraBold,
                    color: ColorConstant.textGrey2),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                minute,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeightConstant.extraBold,
                    color: ColorConstant.backgroundGrey),
              ),
              Text(
                'm',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeightConstant.extraBold,
                    color: ColorConstant.textGrey2),
              )
            ],
          )
        ],
      ),
    );
  }
}
