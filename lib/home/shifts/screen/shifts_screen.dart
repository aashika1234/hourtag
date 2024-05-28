import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourtag/cubit/cubit/auth_cubit.dart';
import 'package:hourtag/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:hourtag/home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';
import 'package:hourtag/home/dashboard/model/user_profile/user_profile_model.dart';
import 'package:hourtag/home/dashboard/screen/dashboard.dart';
import 'package:hourtag/home/shifts/cubit/manual_shift_date_picker_cubit.dart';
import 'package:hourtag/home/shifts/cubit/shifts_cubit.dart';
import 'package:hourtag/home/shifts/model/shift_activity/shift_activity_model.dart';
import 'package:hourtag/home/shifts/screen/add_manual_shift.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/date_time_helper.dart';
import 'package:hourtag/util/global_style.dart';
import 'package:hourtag/util/weight_constant.dart';
import 'package:hourtag/widgets/activity_cart.dart';
import 'package:hourtag/widgets/custom_appbar.dart';
import 'package:hourtag/widgets/custom_button.dart';
import 'package:hourtag/home/dashboard/widgets/project_list.dart';
import 'package:hourtag/widgets/note_widget.dart';
import 'package:hourtag/widgets/shifts/manual_shift_time_outline.dart';
import 'package:hourtag/widgets/shifts/past_shift_widget.dart';
import 'package:hourtag/widgets/shifts/shift_detail.dart';

import '../../../util/functions.dart';

class ShiftsScreen extends StatefulWidget {
  const ShiftsScreen(
      {super.key, required this.dcubit, required this.authToken});
  final DashboardCubit dcubit;
  final String authToken;
  @override
  State<ShiftsScreen> createState() => _ShiftsScreenState();
}

class _ShiftsScreenState extends State<ShiftsScreen> {
  late ShiftsCubit shiftsCubit;
  late DCompany? company;
  @override
  void initState() {
    shiftsCubit = context.read<ShiftsCubit>();
    company = widget.dcubit.state.userProfileModel.usersAndCompanies
        ?.firstWhere(
            (e) => e.companyId == widget.dcubit.state.companyProfileModel.id);
    shiftsCubit.getPastShift(
        companyId: widget.dcubit.state.companyProfileModel.id ?? 0,
        type: company?.targetedWorkingHoursType ?? "WEEKLY");
    super.initState();
  }

  TextEditingController note = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBAr(),
                const SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your ${company?.targetedWorkingHoursType == "WEEKLY" ? "Week" : "Month"}',
                      style: AppStyles.headingStyle,
                    ),
                    InkWell(
                      onTap: () {
                        // showModalBottomSheet<void>(
                        //     context: context,
                        //     isScrollControlled: true,
                        //     builder: (BuildContext context) {
                        //       return BlocProvider(
                        //         create: (context) => ManualShiftDatePickerCubit(
                        //             authToken: context
                        //                 .read<AuthCubit>()
                        //                 .state
                        //                 .authToken),
                        //         child: Container(
                        //             height: MediaQuery.of(context).size.height *
                        //                 0.85,
                        //             padding: const EdgeInsets.symmetric(
                        //                 vertical: 18, horizontal: 20),
                        //             decoration: BoxDecoration(
                        //                 color: ColorConstant.borderFillCOlor,
                        //                 borderRadius: const BorderRadius.only(
                        //                     topLeft: Radius.circular(12),
                        //                     topRight: Radius.circular(12))),
                        //             child: Center(
                        //               child: Column(
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.start,
                        //                 children: <Widget>[
                        //                   Center(
                        //                     child: Container(
                        //                       width: 33,
                        //                       height: 5,
                        //                       decoration: BoxDecoration(
                        //                           color: Colors.white,
                        //                           borderRadius:
                        //                               BorderRadius.circular(
                        //                                   12)),
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     height: 28,
                        //                   ),
                        //                   Text(
                        //                     'Calculate hours',
                        //                     style:
                        //                         AppStyles.bottomSheetTextStyle,
                        //                   ),
                        //                   const SizedBox(
                        //                     height: 28,
                        //                   ),
                        //                   Text(
                        //                     'Total hours',
                        //                     style: AppStyles.smallText,
                        //                   ),
                        //                   const SizedBox(
                        //                     height: 8,
                        //                   ),
                        //                   Row(
                        //                     children: [
                        //                       Text(
                        //                         '03',
                        //                         style: AppStyles.largeDarkText,
                        //                       ),
                        //                       Text(
                        //                         ':',
                        //                         style: AppStyles.largeLightText,
                        //                       ),
                        //                       Text(
                        //                         '55',
                        //                         style: AppStyles.largeDarkText,
                        //                       )
                        //                     ],
                        //                   ),
                        //                   const SizedBox(
                        //                     height: 20,
                        //                   ),
                        //                   const SizedBox(
                        //                     height: 16,
                        //                   ),
                        //                   BlocBuilder<
                        //                       ManualShiftDatePickerCubit,
                        //                       ManualShiftDatePickerState>(
                        //                     builder: (context, state) {
                        //                       ManualShiftDatePickerCubit cubit =
                        //                           context.read<
                        //                               ManualShiftDatePickerCubit>();
                        //                       return Column(
                        //                         children: [
                        //                           CalculateHourDateOutline(
                        //                               onTap: () async {
                        //                                 DateTime pickedDate =
                        //                                     await Func
                        //                                         .datePicker(
                        //                                             context:
                        //                                                 context);
                        //                                 cubit
                        //                                     .changeCalculatrHoursStartDate(
                        //                                         pickedDate);
                        //                               },
                        //                               title: 'Start date',
                        //                               date:
                        //                                   '${Func.extractMonth(state.calculatrHoursStartDate.month)} ${state.calculatrHoursStartDate.day}'),
                        //                           const SizedBox(
                        //                             height: 14,
                        //                           ),
                        //                           CalculateHourDateOutline(
                        //                               onTap: () async {
                        //                                 DateTime pickedDate =
                        //                                     await Func
                        //                                         .datePicker(
                        //                                             context:
                        //                                                 context);
                        //                                 cubit
                        //                                     .changeCalculatrHoursEndDate(
                        //                                         pickedDate);
                        //                               },
                        //                               title: 'End date',
                        //                               date:
                        //                                   '${Func.extractMonth(state.calculatrHoursEndDate.month)} ${state.calculatrHoursEndDate.day}'),
                        //                         ],
                        //                       );
                        //                     },
                        //                   ),
                        //                   const SizedBox(
                        //                     height: 40,
                        //                   ),
                        //                   Text('Hours by projects',
                        //                       style: AppStyles.smallText),
                        //                   const SizedBox(
                        //                     height: 16,
                        //                   ),
                        //                   ListView.separated(
                        //                       physics:
                        //                           const NeverScrollableScrollPhysics(),
                        //                       shrinkWrap: true,
                        //                       itemBuilder: (context, ind) {
                        //                         var darkTimeStyle = TextStyle(
                        //                             fontSize: 20,
                        //                             fontWeight:
                        //                                 FontWeightConstant.bold,
                        //                             color: ColorConstant
                        //                                 .backgroundGrey);
                        //                         var lightTimeStyle = TextStyle(
                        //                             fontSize: 20,
                        //                             fontWeight:
                        //                                 FontWeightConstant.bold,
                        //                             color: ColorConstant
                        //                                 .textGrey2);
                        //                         return Row(
                        //                           mainAxisAlignment:
                        //                               MainAxisAlignment
                        //                                   .spaceBetween,
                        //                           children: [
                        //                             Container(
                        //                               padding: const EdgeInsets
                        //                                   .symmetric(
                        //                                   vertical: 12.5,
                        //                                   horizontal: 12),
                        //                               decoration: BoxDecoration(
                        //                                   borderRadius:
                        //                                       BorderRadius
                        //                                           .circular(12),
                        //                                   border: Border.all(
                        //                                       color:
                        //                                           colors[ind])),
                        //                               child: Center(
                        //                                 child: Text(
                        //                                   categories[ind],
                        //                                   style: TextStyle(
                        //                                       fontSize: 15,
                        //                                       fontWeight:
                        //                                           FontWeightConstant
                        //                                               .normal,
                        //                                       color:
                        //                                           colors[ind]),
                        //                                 ),
                        //                               ),
                        //                             ),
                        //                             Row(
                        //                               children: [
                        //                                 Text(
                        //                                   '23',
                        //                                   style: darkTimeStyle,
                        //                                 ),
                        //                                 Text(
                        //                                   'h',
                        //                                   style: lightTimeStyle,
                        //                                 ),
                        //                                 Text(' 12',
                        //                                     style:
                        //                                         darkTimeStyle),
                        //                                 Text(
                        //                                   'm',
                        //                                   style: lightTimeStyle,
                        //                                 ),
                        //                               ],
                        //                             )
                        //                           ],
                        //                         );
                        //                       },
                        //                       separatorBuilder: (context, ind) {
                        //                         return const SizedBox(
                        //                           height: 8,
                        //                         );
                        //                       },
                        //                       itemCount: 4)
                        //                 ],
                        //               ),
                        //             )),
                        //       );
                        //     });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.5, horizontal: 12),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorConstant.borderFillCOlor),
                            borderRadius: BorderRadius.circular(51)),
                        child: Text(
                          'Calculate hours',
                          style: AppStyles.buttonTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                BlocBuilder<ShiftsCubit, ShiftsState>(
                  builder: (context, state) {
                    if (state.status != ShiftsStateStatus.loaded) {
                      return Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: ColorConstant.borderFillCOlor,
                            borderRadius: BorderRadius.circular(12)),
                        height: 178,
                      );
                    }
                    return ActivityCart(
                      type: company?.targetedWorkingHoursType ?? "WEEKLY",
                      totalHours:
                          double.parse("${company?.targetedWorkingHours ?? 0}"),
                      customYourActivityModel:
                          shiftsCubit.getCustomYourActivityModel(
                              type: company?.targetedWorkingHoursType ??
                                  "WEEKLY"),
                    );
                  },
                ),
                const SizedBox(
                  height: 56,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shifts',
                      style: AppStyles.headingStyle,
                    ),
                    InkWell(
                      onTap: () {
                        addManualShift(context, dcubit: widget.dcubit);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.5, horizontal: 12),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorConstant.borderFillCOlor),
                            borderRadius: BorderRadius.circular(51)),
                        child: Text(
                          'Add manual shift',
                          style: AppStyles.buttonTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: BlocBuilder<ShiftsCubit, ShiftsState>(
                        builder: (context, state) {
                          return InkWell(
                            onTap: () {
                              context
                                  .read<ShiftsCubit>()
                                  .changeSelectedIndex(0);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              decoration: BoxDecoration(
                                  color: state.selectedIndex == 0
                                      ? ColorConstant.grey
                                      : ColorConstant.borderFillCOlor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Center(
                                child: Text('Today',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight:
                                            FontWeightConstant.extraBold)),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: BlocBuilder<ShiftsCubit, ShiftsState>(
                        builder: (context, state) {
                          return InkWell(
                            onTap: () {
                              context
                                  .read<ShiftsCubit>()
                                  .changeSelectedIndex(1);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              decoration: BoxDecoration(
                                  color: state.selectedIndex == 1
                                      ? ColorConstant.grey
                                      : ColorConstant.borderFillCOlor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Center(
                                child: Text('Past shifts',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight:
                                            FontWeightConstant.extraBold)),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                BlocBuilder<ShiftsCubit, ShiftsState>(
                  builder: (context, state) {
                    return state.selectedIndex == 0
                        ? BlocBuilder<DashboardCubit, DashboardState>(
                            bloc: widget.dcubit,
                            builder: (context, state) {
                              return ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, ind) {
                                    Shift? shift = state.weeklyShiftModel
                                        .todaysShifts?.shifts?[ind];

                                    return ShiftDetail(
                                        onEditTap: () {
                                          addManualShift(context,
                                              dcubit: widget.dcubit,
                                              shift: shift);
                                        },
                                        shift: shift ?? const Shift(),
                                        color: ColorConstant.borderFillCOlor,
                                        onDelete: () {
                                          showShiftDelete(context, () async {
                                            try {
                                              await widget.dcubit.delete(
                                                shift?.id ?? 0,
                                              );
                                              await widget.dcubit
                                                  .refetchDetailsData();
                                              final snackBar = SnackBar(
                                                backgroundColor:
                                                    ColorConstant.blue,
                                                content: const Text(
                                                  'Successfully deleted!',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                behavior:
                                                    SnackBarBehavior.floating,
                                              );
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(snackBar);
                                            } catch (e) {
                                              final snackBar = SnackBar(
                                                backgroundColor:
                                                    ColorConstant.red,
                                                content: const Text(
                                                  'Failed to delete the shift!',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                behavior:
                                                    SnackBarBehavior.floating,
                                              );
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(snackBar);
                                            }
                                            Navigator.pop(context);
                                          });
                                        });
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      height: 8,
                                    );
                                  },
                                  itemCount: state.weeklyShiftModel.todaysShifts
                                          ?.shifts?.length ??
                                      0);
                            },
                          )
                        : Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding:
                                        const EdgeInsetsDirectional.symmetric(
                                            vertical: 10, horizontal: 16),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorConstant.borderGrey),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Text(
                                      'May 14',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeightConstant.bold,
                                          color: ColorConstant.textGrey2),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'to',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeightConstant.bold,
                                        color: ColorConstant.textGrey2),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsetsDirectional.symmetric(
                                            vertical: 10, horizontal: 16),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorConstant.borderGrey),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Text(
                                      'May 14',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeightConstant.bold,
                                          color: ColorConstant.textGrey2),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, ind) {
                                    return PastShiftWidget(
                                      cubit: widget.dcubit,
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      height: 8,
                                    );
                                  },
                                  itemCount: 3),
                            ],
                          );
                  },
                ),
                const SizedBox(
                  height: 56,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: ColorConstant.borderFillCOlor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'HourTag is in Beta',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeightConstant.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'How has your experience been? We want to continually improve our product to serve you better.',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeightConstant.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      CustomnButton(
                        text: 'Send Feedback',
                        onTap: () {
                          showModalBottomSheet<void>(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.45,
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
                                          const Center(
                                            child: ModelBAr(),
                                          ),
                                          const SizedBox(
                                            height: 28,
                                          ),
                                          Text(
                                            'Send Feedback',
                                            style:
                                                AppStyles.bottomSheetTextStyle,
                                          ),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          Text('How was your experience?',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeightConstant.normal,
                                                  color: ColorConstant
                                                      .backgroundGrey)),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          NoteWidget(
                                            hintText: 'Write here.....',
                                            controller: note,
                                            onTap: () {},
                                            max: 6,
                                          )
                                        ],
                                      ),
                                    ));
                              });
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ModelBAr extends StatelessWidget {
  const ModelBAr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 33,
      height: 5,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
    );
  }
}
