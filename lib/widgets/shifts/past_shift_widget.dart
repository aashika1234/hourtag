import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:hourtag/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:hourtag/home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';

import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';
import 'package:hourtag/widgets/shifts/shift_detail.dart';

class PastShiftWidget extends StatelessWidget {
  const PastShiftWidget({
    super.key,
    required this.cubit,
  });
  final DashboardCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: ColorConstant.borderFillCOlor,
          borderRadius: BorderRadius.circular(12)),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '6',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeightConstant.xextraBold,
                      color: ColorConstant.backgroundGrey,
                    ),
                  ),
                  Text(
                    'h',
                    style: TextStyle(
                      fontSize: 16,
                      color: ColorConstant.textGrey2,
                      fontWeight: FontWeightConstant.xextraBold,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeightConstant.xextraBold,
                        color: ColorConstant.backgroundGrey),
                  ),
                  Text(
                    'm',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeightConstant.xextraBold,
                        color: ColorConstant.textGrey2),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    '17th Feb, Friday',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeightConstant.bold,
                        color: ColorConstant.textGrey2),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  SvgPicture.asset('assets/icons/dot.svg'),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    '3 shifts',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeightConstant.bold,
                        color: ColorConstant.textGrey2),
                  ),
                ],
              )
            ],
          ),
          children: <Widget>[
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, ind) {
                  return Container(
                    padding: const EdgeInsets.only(right: 12, left: 12),
                    child: ShiftDetail(
                      color: Colors.black,
                      shift: Shift(),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 8,
                  );
                },
                itemCount: 3)
          ],
        ),
      ),
    );
  }
}
