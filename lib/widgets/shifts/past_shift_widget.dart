import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/svg.dart';
import 'package:hourtag/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:hourtag/home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';
import 'package:hourtag/home/dashboard/screen/dashboard.dart';
import 'package:hourtag/home/shifts/cubit/shifts_cubit.dart';
import 'package:hourtag/home/shifts/model/past_shifts/past_shift_model.dart';
import 'package:hourtag/home/shifts/screen/add_manual_shift.dart';

import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/weight_constant.dart';
import 'package:hourtag/widgets/shifts/shift_detail.dart';

class PastShiftWidget extends StatefulWidget {
  final List<Shift> shifts;
  final ValueChanged<void> refreshShift;
  final DateTime date;

  final Time time;
  const PastShiftWidget({
    super.key,
    required this.cubit,
    required this.shifts,
    required this.date,
    required this.refreshShift,
    required this.time,
  });
  final DashboardCubit cubit;

  @override
  State<PastShiftWidget> createState() => _PastShiftWidgetState();
}

class _PastShiftWidgetState extends State<PastShiftWidget> {
  late final DashboardCubit dcubit = widget.cubit;
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
                    '${widget.time.hours}',
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
                    '${widget.time.minutes}',
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
                    widget.date.toDayMonthWeekday(),
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
                    '${widget.shifts.length + 1} shifts',
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
                      shift: widget.shifts[ind],
                      onDelete: () {
                        showShiftDelete(context, () async {
                          try {
                            await dcubit.delete(
                              widget.shifts[ind].id ?? 0,
                            );
                            widget.refreshShift.call(null);
                            final snackBar = SnackBar(
                              backgroundColor: ColorConstant.blue,
                              content: const Text(
                                'Successfully deleted!',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                              behavior: SnackBarBehavior.floating,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } catch (e) {
                            final snackBar = SnackBar(
                              backgroundColor: ColorConstant.red,
                              content: const Text(
                                'Failed to delete the shift!',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                              behavior: SnackBarBehavior.floating,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                          Navigator.pop(context);
                        });
                      },
                      onEditTap: () async {
                        int? val = await addManualShift(context,
                            dcubit: dcubit, shift: widget.shifts[ind]);
                        if (val == 1) {
                          widget.refreshShift.call(null);
                        }
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 8,
                  );
                },
                itemCount: widget.shifts.length)
          ],
        ),
      ),
    );
  }
}
