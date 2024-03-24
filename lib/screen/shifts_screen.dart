import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourtag/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:hourtag/cubit/shifts/shifts_cubit.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/global_style.dart';
import 'package:hourtag/util/weight_constant.dart';
import 'package:hourtag/widgets/activity_cart.dart';
import 'package:hourtag/widgets/custom_appbar.dart';
import 'package:hourtag/widgets/custom_button.dart';
import 'package:hourtag/home/dashboard/widgets/project_list.dart';
import 'package:hourtag/widgets/note_widget.dart';
import 'package:hourtag/widgets/shifts/calculate_hour_date_outline.dart';
import 'package:hourtag/widgets/shifts/manual_shift_time_outline.dart';
import 'package:hourtag/widgets/shifts/past_shift_widget.dart';
import 'package:hourtag/widgets/shifts/shift_detail.dart';

class ShiftsScreen extends StatefulWidget {
  const ShiftsScreen({
    super.key,
  });

  @override
  State<ShiftsScreen> createState() => _ShiftsScreenState();
}

class _ShiftsScreenState extends State<ShiftsScreen> {
  late DashboardCubit dcubit;
  @override
  void initState() {
    dcubit = context.read<DashboardCubit>();
    super.initState();
  }

  TextEditingController note = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      'Design',
      'Frontend',
      'Backend',
      'Management',
      'Marketing',
      'Sales',
      'Finance',
      'HR',
      'Legal',
      'Other'
    ];
    final List<Color> colors = [
      ColorConstant.cPurple,
      ColorConstant.cblue,
      ColorConstant.orange,
      ColorConstant.cPink,
    ];

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
                      'Your activity',
                      style: AppStyles.headingStyle,
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.85,
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
                                                    BorderRadius.circular(12)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 28,
                                        ),
                                        Text(
                                          'Calculate hours',
                                          style: AppStyles.bottomSheetTextStyle,
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
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        const CalculateHourDateOutline(
                                          title: 'Start date',
                                          date: 'June 01',
                                        ),
                                        const SizedBox(
                                          height: 14,
                                        ),
                                        const CalculateHourDateOutline(
                                          title: 'End date',
                                          date: 'June 17',
                                        ),
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        Text('Hours by projects',
                                            style: AppStyles.smallText),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        ListView.separated(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemBuilder: (context, ind) {
                                              var darkTimeStyle = TextStyle(
                                                  fontSize: 20,
                                                  fontWeight:
                                                      FontWeightConstant.bold,
                                                  color: ColorConstant
                                                      .backgroundGrey);
                                              var lightTimeStyle = TextStyle(
                                                  fontSize: 20,
                                                  fontWeight:
                                                      FontWeightConstant.bold,
                                                  color:
                                                      ColorConstant.textGrey2);
                                              return Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 12.5,
                                                        horizontal: 12),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        border: Border.all(
                                                            color:
                                                                colors[ind])),
                                                    child: Center(
                                                      child: Text(
                                                        categories[ind],
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeightConstant
                                                                    .normal,
                                                            color: colors[ind]),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '23',
                                                        style: darkTimeStyle,
                                                      ),
                                                      Text(
                                                        'h',
                                                        style: lightTimeStyle,
                                                      ),
                                                      Text(' 12',
                                                          style: darkTimeStyle),
                                                      Text(
                                                        'm',
                                                        style: lightTimeStyle,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              );
                                            },
                                            separatorBuilder: (context, ind) {
                                              return const SizedBox(
                                                height: 8,
                                              );
                                            },
                                            itemCount: 4)
                                      ],
                                    ),
                                  ));
                            });
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
                ActivityCart(
                    subHeadingStyle: AppStyles.headingStyle,
                    period: 'Today',
                    date: 'Feb 17',
                    hour: '4',
                    minute: '38'),
                const SizedBox(
                  height: 8,
                ),
                ActivityCart(
                    subHeadingStyle: AppStyles.headingStyle,
                    period: 'Weekly',
                    date: '(Feb 17-Mar 03)',
                    hour: '23',
                    minute: '30'),
                const SizedBox(
                  height: 8,
                ),
                ActivityCart(
                    subHeadingStyle: AppStyles.headingStyle,
                    period: 'Monthly',
                    date: 'Feb 01-Mar 01)',
                    hour: '40',
                    minute: '30'),
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
                        showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.85,
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
                                                    BorderRadius.circular(12)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 28,
                                        ),
                                        Text(
                                          'Add a manual shift',
                                          style: AppStyles.bottomSheetTextStyle,
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
                                              color:
                                                  ColorConstant.backgroundGrey,
                                              fontWeight:
                                                  FontWeightConstant.normal),
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        BlocBuilder<DashboardCubit,
                                            DashboardState>(
                                          bloc: dcubit,
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
                                                      categories: categories,
                                                      index: ind,
                                                      stateIndex:
                                                          state.selectedIndex,
                                                      color: [],
                                                    ),
                                                  );
                                                },
                                                separatorBuilder:
                                                    (context, index) =>
                                                        const SizedBox(
                                                  width: 8,
                                                ),
                                                itemCount: categories.length,
                                              ),
                                            );
                                          },
                                        ),
                                        const SizedBox(
                                          height: 28,
                                        ),
                                        const ManualShiftTimeOutline(
                                            topic: 'Start time',
                                            date: 'June 17',
                                            time: '08 : 05'),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const ManualShiftTimeOutline(
                                            topic: 'End time',
                                            date: 'June 17',
                                            time: '12 : 00'),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        const SizedBox(
                                          height: 28,
                                        ),
                                        Text('Shift note',
                                            style: TextStyle(
                                                fontWeight:
                                                    FontWeightConstant.normal,
                                                color: ColorConstant
                                                    .backgroundGrey)),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        NoteWidget(
                                          hintText: 'What did you do?',
                                          controller: note,
                                          onTap: () {},
                                        )
                                      ],
                                    ),
                                  ));
                            });
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
                        ? ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, ind) {
                              return ShiftDetail(
                                color: ColorConstant.borderFillCOlor,
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 8,
                              );
                            },
                            itemCount: 3)
                        : ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, ind) {
                              return const PastShiftWidget();
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 8,
                              );
                            },
                            itemCount: 3);
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
                        onTap: () {},
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
