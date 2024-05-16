import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourtag/home/dashboard/widgets/project_list.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/functions.dart';
import 'package:hourtag/util/global_style.dart';
import 'package:hourtag/util/weight_constant.dart';
import 'package:hourtag/widgets/note_widget.dart';

import 'package:hourtag/widgets/shifts/manual_shift_time_outline.dart';

import '../../home/dashboard/cubit/dashboard_cubit.dart';

class ShiftDetail extends StatelessWidget {
  ShiftDetail({super.key, required this.color, required this.cubit});
  final Color color;
  final DashboardCubit cubit;
  final TextEditingController note = TextEditingController();
  final TextEditingController shiftDetails = TextEditingController();
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
                    '0',
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
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(126, 86, 218, 0.25),
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Design',
                      style: TextStyle(
                        fontWeight: FontWeightConstant.bold,
                        color: ColorConstant.cPurple,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                '14:00-14:10',
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
                children: [
                  Text(
                    'I worked on the company pitch deck. Wow!',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeightConstant.normal,
                        color: ColorConstant.backgroundGrey),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.95,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 18, horizontal: 20),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.borderFillCOlor,
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12))),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Center(
                                            child: Container(
                                              width: 33,
                                              height: 5,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 28,
                                          ),
                                          Text(
                                            'Edit Shift',
                                            style:
                                                AppStyles.bottomSheetTextStyle,
                                          ),
                                          const SizedBox(
                                            height: 28,
                                          ),
                                          Text(
                                            'Total hours',
                                            style: AppStyles.smallText,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '03',
                                                style: AppStyles.largeDarkText,
                                              ),
                                              Text(
                                                ':',
                                                style: AppStyles.largeLightText,
                                              ),
                                              Text(
                                                '55',
                                                style: AppStyles.largeDarkText,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'Your Project',
                                            style: TextStyle(
                                                color: ColorConstant
                                                    .backgroundGrey,
                                                fontWeight:
                                                    FontWeightConstant.normal),
                                          ),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          BlocBuilder<DashboardCubit,
                                              DashboardState>(
                                            bloc: cubit,
                                            builder: (context, state) {
                                              return SizedBox(
                                                height: 50,
                                                child: ListView.separated(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemBuilder: (context, ind) {
                                                    return InkWell(
                                                      onTap: () {
                                                        context
                                                            .read<
                                                                DashboardCubit>()
                                                            .changeSelectedIndex(
                                                                ind);
                                                      },
                                                      child: ProjectList(
                                                        categories: List.generate(
                                                            state
                                                                    .companyProfileModel
                                                                    .projects
                                                                    ?.length ??
                                                                0,
                                                            (index) => state
                                                                .companyProfileModel
                                                                .projects![
                                                                    index]
                                                                .name!),
                                                        color: List.generate(
                                                            state
                                                                    .companyProfileModel
                                                                    .projects
                                                                    ?.length ??
                                                                0, (index) {
                                                          String colorCode = state
                                                                  .companyProfileModel
                                                                  .projects![
                                                                      index]
                                                                  .colorCode ??
                                                              '#ffffff';
                                                          return Func
                                                              .formatColor(
                                                                  colorCode);
                                                        }),
                                                        index: ind,
                                                        stateIndex:
                                                            state.selectedIndex,
                                                      ),
                                                    );
                                                  },
                                                  separatorBuilder:
                                                      (context, index) =>
                                                          const SizedBox(
                                                    width: 8,
                                                  ),
                                                  itemCount: state
                                                          .companyProfileModel
                                                          .projects
                                                          ?.length ??
                                                      0,
                                                ),
                                              );
                                            },
                                          ),
                                          const SizedBox(
                                            height: 28,
                                          ),
                                          ManualShiftTimeOutline(
                                              onDateTap: () {},
                                              onTimeTap: () {},
                                              topic: 'Start time',
                                              date: 'June 17',
                                              time: '08 : 05'),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          ManualShiftTimeOutline(
                                              onDateTap: () {},
                                              onTimeTap: () {},
                                              topic: 'End time',
                                              date: 'June 17',
                                              time: '12 : 00'),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text('Shift Details ',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeightConstant.normal,
                                                  color: ColorConstant
                                                      .backgroundGrey)),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          TextField(
                                            controller: note,
                                            maxLines: 2,
                                            decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.black,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                hintText: 'What did you do?',
                                                hintStyle: TextStyle(
                                                    fontSize: 16,
                                                    color:
                                                        ColorConstant.textGrey2,
                                                    fontWeight:
                                                        FontWeightConstant
                                                            .normal)),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text('Edit request note ',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeightConstant.normal,
                                                  color: ColorConstant
                                                      .backgroundGrey)),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          NoteWidget(
                                              hintText:
                                                  'Note regarding edit request',
                                              controller: note,
                                              max: 4,
                                              onTap: () {})
                                        ],
                                      ),
                                    ));
                              });
                        },
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
                        onTap: () {
                          showCupertinoModalPopup<void>(
                            context: context,
                            builder: (BuildContext context) =>
                                CupertinoAlertDialog(
                              title: const Text(
                                  "'Hour' are you sure you want to delete this shift?"),
                              content: const Text(
                                  'If you delete this shift, it will be removed from your timesheet and hours will not be counted.'),
                              actions: <CupertinoDialogAction>[
                                CupertinoDialogAction(
                                  isDefaultAction: true,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Don't delete",
                                    style: TextStyle(color: ColorConstant.blue),
                                  ),
                                ),
                                CupertinoDialogAction(
                                  isDestructiveAction: true,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Delete',
                                      style:
                                          TextStyle(color: ColorConstant.red)),
                                ),
                              ],
                            ),
                          );
                        },
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
