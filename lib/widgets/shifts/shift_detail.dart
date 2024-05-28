import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourtag/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:hourtag/home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';
import 'package:hourtag/home/dashboard/screen/dashboard.dart';
import 'package:hourtag/home/shifts/screen/shifts_screen.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/date_time_helper.dart';
import 'package:hourtag/util/weight_constant.dart';

class ShiftDetail extends StatelessWidget {
  const ShiftDetail({
    super.key,
    required this.color,
    required this.shift,
    required this.onDelete,
    required this.onEditTap,
  });
  final Color color;
  final Shift shift;
  final void Function()? onDelete;
  final void Function()? onEditTap;

  // final TextEditingController note = TextEditingController();
  // final TextEditingController shiftDetails = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent, // Set the divider color here
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
                    shift.total_shift_time?.hours.toString() ?? "0",
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
                    shift.total_shift_time?.minutes.toString() ?? "0",
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
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    shift.total_shift_time?.seconds.toString() ?? "0",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeightConstant.xextraBold,
                      color: ColorConstant.backgroundGrey,
                    ),
                  ),
                  Text(
                    's',
                    style: TextStyle(
                      fontSize: 16,
                      color: ColorConstant.textGrey2,
                      fontWeight: FontWeightConstant.xextraBold,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  shift.projectId == null
                      ? const SizedBox()
                      : Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(126, 86, 218, 0.25),
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            context
                                .read<DashboardCubit>()
                                .returnUserProjectFromProjectID(
                                    shift.projectId ?? -1),
                            style: TextStyle(
                              fontWeight: FontWeightConstant.bold,
                              color: ColorConstant.cPurpleWhite,
                            ),
                          ),
                        ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                formatUtcToLocalTime(shift.start_time, shift.end_time),
                style: TextStyle(
                    fontWeight: FontWeightConstant.bold,
                    color: ColorConstant.textGrey2),
              )
            ],
          ),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ((shift.note ?? "").isEmpty)
                      ? const SizedBox()
                      : Text(
                          shift.note!,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeightConstant.normal,
                              color: ColorConstant.backgroundGrey),
                        ),
                  SizedBox(
                    height: ((shift.note ?? "").isEmpty) ? 0 : 16,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: onEditTap,
                        child: Text(
                          'EDIT',
                          style: TextStyle(
                              fontWeight: FontWeightConstant.extraBold,
                              color: ColorConstant.textGrey2),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      InkWell(
                        onTap: onDelete,
                        child: Text(
                          'DELETE',
                          style: TextStyle(
                              fontWeight: FontWeightConstant.extraBold,
                              color: ColorConstant.textGrey2),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
