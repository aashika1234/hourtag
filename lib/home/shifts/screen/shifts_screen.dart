import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourtag/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:hourtag/home/shifts/cubit/manual_shift_date_picker_cubit.dart';
import 'package:hourtag/home/shifts/cubit/shifts_cubit.dart';
import 'package:hourtag/home/shifts/model/shift_activity/shift_activity_model.dart';

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
  @override
  void initState() {
    shiftsCubit = context.read<ShiftsCubit>();

    shiftsCubit
        .getShiftActivityData(widget.dcubit.state.companyProfileModel.id ?? 0);
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
                              return BlocProvider(
                                create: (context) =>
                                    ManualShiftDatePickerCubit(),
                                child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.85,
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
                                            'Calculate hours',
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
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          BlocBuilder<
                                              ManualShiftDatePickerCubit,
                                              ManualShiftDatePickerState>(
                                            builder: (context, state) {
                                              ManualShiftDatePickerCubit cubit =
                                                  context.read<
                                                      ManualShiftDatePickerCubit>();
                                              return Column(
                                                children: [
                                                  CalculateHourDateOutline(
                                                      onTap: () async {
                                                        DateTime pickedDate =
                                                            await Func
                                                                .datePicker(
                                                                    context:
                                                                        context);
                                                        cubit
                                                            .changeCalculatrHoursStartDate(
                                                                pickedDate);
                                                      },
                                                      title: 'Start date',
                                                      date:
                                                          '${Func.extractMonth(state.calculatrHoursStartDate.month)} ${state.calculatrHoursStartDate.day}'),
                                                  const SizedBox(
                                                    height: 14,
                                                  ),
                                                  CalculateHourDateOutline(
                                                      onTap: () async {
                                                        DateTime pickedDate =
                                                            await Func
                                                                .datePicker(
                                                                    context:
                                                                        context);
                                                        cubit
                                                            .changeCalculatrHoursEndDate(
                                                                pickedDate);
                                                      },
                                                      title: 'End date',
                                                      date:
                                                          '${Func.extractMonth(state.calculatrHoursEndDate.month)} ${state.calculatrHoursEndDate.day}'),
                                                ],
                                              );
                                            },
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
                                                    color: ColorConstant
                                                        .textGrey2);
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
                                                              color:
                                                                  colors[ind]),
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
                                                            style:
                                                                darkTimeStyle),
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
                                    )),
                              );
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
                BlocBuilder<ShiftsCubit, ShiftsState>(
                  builder: (context, state) {
                    ThisMonth today = state.shiftActivityModel?.today ??
                        const ThisMonth(hours: 0, minutes: 0, seconds: 0);
                    ThisMonth weekly = state.shiftActivityModel?.thisWeek ??
                        const ThisMonth(hours: 0, minutes: 0, seconds: 0);
                    ThisMonth monthly = state.shiftActivityModel?.thisMonth ??
                        const ThisMonth(hours: 0, minutes: 0, seconds: 0);
                    DateTime currentDate = DateTime.now();

                    DateTime calculateWeekStart() {
                      DateTime now = DateTime.now();
                      int weekday = now.weekday;
                      int diff = weekday - 1;
                      if (diff == 0) {
                        return now;
                      } else {
                        DateTime weekStart = now.subtract(Duration(days: diff));
                        return weekStart;
                      }
                    }

                    DateTime weekStart = calculateWeekStart();
                    DateTime monthStart =
                        currentDate.subtract(const Duration(days: 30));
                    return Column(
                      children: [
                        ActivityCart(
                            subHeadingStyle: AppStyles.headingStyle,
                            period: 'Today',
                            date:
                                '${Func.extractMonth(currentDate.month)} ${currentDate.day}',
                            hour: today.hours.toString(),
                            minute: today.minutes.toString()),
                        const SizedBox(
                          height: 8,
                        ),
                        ActivityCart(
                            subHeadingStyle: AppStyles.headingStyle,
                            period: 'Weekly',
                            date:
                                '${Func.extractMonth(weekStart.month)} ${weekStart.day} - ${Func.extractMonth(currentDate.month)} ${currentDate.day}',
                            hour: weekly.hours.toString(),
                            minute: weekly.minutes.toString()),
                        const SizedBox(
                          height: 8,
                        ),
                        ActivityCart(
                            subHeadingStyle: AppStyles.headingStyle,
                            period: 'Monthly',
                            date: 'Feb 01-Mar 01)',
                            hour: monthly.hours.toString(),
                            minute: monthly.minutes.toString())
                      ],
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
                        showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return BlocProvider(
                                create: (context) =>
                                    ManualShiftDatePickerCubit(),
                                child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.85,
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
                                            'Add a manual shift',
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
                                            bloc: widget.dcubit,
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
                                          BlocBuilder<
                                              ManualShiftDatePickerCubit,
                                              ManualShiftDatePickerState>(
                                            builder: (context, state) {
                                              ManualShiftDatePickerCubit cubit =
                                                  context.read<
                                                      ManualShiftDatePickerCubit>();
                                              return Column(
                                                children: [
                                                  ManualShiftTimeOutline(
                                                      onTimeTap: () async {
                                                        TimeOfDay pickedTime =
                                                            await Func.pickTime(
                                                                context:
                                                                    context);
                                                        cubit
                                                            .changeManualShiftStartTime(
                                                                pickedTime);
                                                      },
                                                      onDateTap: () async {
                                                        DateTime pickedDate =
                                                            await Func
                                                                .datePicker(
                                                                    context:
                                                                        context);

                                                        cubit
                                                            .changeCalculatrHoursStartDate(
                                                                pickedDate);
                                                      },
                                                      topic: 'Start time',
                                                      date:
                                                          '${Func.extractMonth(state.manualShiftStartDate.month)} ${state.manualShiftStartDate.day}',
                                                      time:
                                                          '${state.manualShiftStartTime.hour}:${state.manualShiftStartTime.minute}'),
                                                  const SizedBox(
                                                    height: 8,
                                                  ),
                                                  ManualShiftTimeOutline(
                                                      onTimeTap: () async {
                                                        TimeOfDay pickedTime =
                                                            await Func.pickTime(
                                                                context:
                                                                    context);
                                                        cubit
                                                            .changeManualShiftEndTime(
                                                                pickedTime);
                                                      },
                                                      onDateTap: () async {
                                                        DateTime pickedDate =
                                                            await Func
                                                                .datePicker(
                                                                    context:
                                                                        context);
                                                        cubit
                                                            .changeManualShiftEndDate(
                                                                pickedDate);
                                                      },
                                                      topic: 'End time',
                                                      date:
                                                          '${Func.extractMonth(state.manualShiftEndDate.month)} ${state.manualShiftEndDate.day}',
                                                      time:
                                                          '${state.manualShiftEndTime.hour}:${state.manualShiftEndTime.minute}'),
                                                ],
                                              );
                                            },
                                          ),
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
                                            max: 6,
                                          )
                                        ],
                                      ),
                                    )),
                              );
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
                        ? BlocBuilder<DashboardCubit, DashboardState>(
                            bloc: widget.dcubit,
                            builder: (context, state) {
                              return ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, ind) {
                                    return ShiftDetail(
                                      shift: state
                                          .ongoingShiftModel.todaysShifts![ind],
                                      color: ColorConstant.borderFillCOlor,
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      height: 8,
                                    );
                                  },
                                  itemCount: state.ongoingShiftModel
                                          .todaysShifts?.length ??
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
