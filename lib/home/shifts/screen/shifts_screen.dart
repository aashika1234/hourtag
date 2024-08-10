// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourtag/const/api_const.dart';
import 'package:hourtag/cubit/cubit/auth_cubit.dart';
import 'package:hourtag/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:hourtag/home/dashboard/model/ongoing_shifts/ongoing_shift_model.dart';
import 'package:hourtag/home/dashboard/model/user_profile/user_profile_model.dart';
import 'package:hourtag/home/dashboard/screen/dashboard.dart';
import 'package:hourtag/home/dashboard/widgets/project_list.dart';
import 'package:hourtag/home/shifts/cubit/shifts_cubit.dart';
import 'package:hourtag/home/shifts/model/past_shifts/past_shift_model.dart';
import 'package:hourtag/home/shifts/repo/shift_repo.dart';
import 'package:hourtag/home/shifts/screen/add_manual_shift.dart';
import 'package:hourtag/home/shifts/widgets/custom_shimmer.dart';
import 'package:hourtag/home/shifts/widgets/model_bar.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/global_style.dart';
import 'package:hourtag/util/weight_constant.dart';
import 'package:hourtag/widgets/activity_cart.dart';
import 'package:hourtag/widgets/custom_appbar.dart';
import 'package:hourtag/widgets/custom_button.dart';
import 'package:hourtag/widgets/note_widget.dart';
import 'package:hourtag/widgets/shifts/past_shift_widget.dart';
import 'package:hourtag/widgets/shifts/shift_detail.dart';
import 'package:logger/logger.dart';

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
  late AuthCubit authCubit = context.read<AuthCubit>();
  late ShiftsCubit shiftsCubit;
  late DCompany? company;
  @override
  void initState() {
    shiftsCubit = context.read<ShiftsCubit>();
    company = authCubit.state.userProfileModel?.usersAndCompanies?.firstWhere(
        (e) => e.companyId == widget.dcubit.state.companyProfileModel.id);
    shiftsCubit.getPastShift(
        companyId: widget.dcubit.companyId,
        type: company?.targetedWorkingHoursType ?? "WEEKLY");
    shiftsCubit.getCustomPastShift(companyId: widget.dcubit.companyId);
    super.initState();
  }

  TextEditingController note = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.dcubit,
      child: Scaffold(
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
                          showModalBottomSheet<void>(
                              context: context,
                              backgroundColor: ColorConstant.borderFillCOlor,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return CalculateHoursBottomSheet(
                                  dashboardCubit: widget.dcubit,
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
                      if (state.status != ShiftsStateStatus.loaded) {
                        return Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: ColorConstant.borderFillCOlor,
                              borderRadius: BorderRadius.circular(12)),
                          height: 143,
                        );
                      }

                      return ActivityCart(
                        type: company?.targetedWorkingHoursType ?? "WEEKLY",
                        totalHours: double.tryParse(
                                "${company?.targetedWorkingHours ?? 0}") ??
                            0,
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4),
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4),
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
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, ind) {
                                      Shift? shift = state.weeklyShiftModel
                                          .todaysShifts?.shifts?[ind];

                                      return ShiftDetail(
                                          onEditTap: () async {
                                            int? status = await addManualShift(
                                                context,
                                                dcubit: widget.dcubit,
                                                shift: shift);
                                            if (status == 1) {
                                              widget.dcubit
                                                  .refetchDetailsData();
                                            }
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
                                    itemCount: state.weeklyShiftModel
                                            .todaysShifts?.shifts?.length ??
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
                                      child:
                                          BlocBuilder<ShiftsCubit, ShiftsState>(
                                        buildWhen: (previous, current) {
                                          return previous.pastShiftStartDate !=
                                              current.pastShiftStartDate;
                                        },
                                        builder: (context, state) {
                                          return InkWell(
                                            onTap: () async {
                                              DateTime pickedDate =
                                                  await Func.datePicker(
                                                      firstDate: DateTime(2010),
                                                      initialDate: state
                                                          .pastShiftStartDate,
                                                      context: context);
                                              shiftsCubit
                                                  .changePastShiftStartDate(
                                                      pickedDate);
                                              shiftsCubit.getCustomPastShift(
                                                  companyId: widget
                                                          .dcubit
                                                          .state
                                                          .companyProfileModel
                                                          .id ??
                                                      0);
                                            },
                                            child: Text(
                                              state.pastShiftStartDate
                                                  .toShortMonthDay(),
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeightConstant.bold,
                                                  color:
                                                      ColorConstant.textGrey2),
                                            ),
                                          );
                                        },
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
                                      child:
                                          BlocBuilder<ShiftsCubit, ShiftsState>(
                                        buildWhen: (previous, current) =>
                                            previous.pastShiftEndDate !=
                                            current.pastShiftEndDate,
                                        builder: (context, state) {
                                          return InkWell(
                                            onTap: () async {
                                              DateTime pickedDate =
                                                  await Func.datePicker(
                                                      firstDate: DateTime(2010),
                                                      initialDate: state
                                                          .pastShiftEndDate,
                                                      context: context);
                                              shiftsCubit
                                                  .changePastShiftEndDate(
                                                      pickedDate);
                                              shiftsCubit.getCustomPastShift(
                                                  companyId: widget
                                                          .dcubit
                                                          .state
                                                          .companyProfileModel
                                                          .id ??
                                                      0);
                                            },
                                            child: Text(
                                              state.pastShiftEndDate
                                                  .toShortMonthDay(),
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeightConstant.bold,
                                                  color:
                                                      ColorConstant.textGrey2),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                BlocBuilder<ShiftsCubit, ShiftsState>(
                                  builder: (context, state) {
                                    if (state.customShiftFetchStatus !=
                                        CustomShiftFetchStatus.loaded) {
                                      return const Row(
                                        children: [
                                          CustomShimmer(
                                            height: 45,
                                            width: 100,
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          CustomShimmer(
                                            height: 45,
                                            width: 100,
                                          )
                                        ],
                                      );
                                    }
                                    return SizedBox(
                                      height: 50,
                                      child: Builder(builder: (context) {
                                        return ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, ind) {
                                            return ProjectList(
                                              categories: List.generate(
                                                  state.customPastShiftModel
                                                          .projects?.length ??
                                                      0,
                                                  (index) =>
                                                      "${state.customPastShiftModel.projects![index].name} ${state.customPastShiftModel.projects![index].totalShiftTime?.hours} h ${state.customPastShiftModel.projects![index].totalShiftTime?.minutes} m"),
                                              color: List.generate(
                                                  state.customPastShiftModel
                                                          .projects?.length ??
                                                      0, (index) {
                                                String colorCode = state
                                                        .customPastShiftModel
                                                        .projects![index]
                                                        .colorCode ??
                                                    '#ffffff';
                                                return Func.formatColor(
                                                    colorCode);
                                              }),
                                              index: ind,
                                              stateIndex: state.selectedIndex,
                                            );
                                          },
                                          separatorBuilder: (context, index) =>
                                              const SizedBox(
                                            width: 8,
                                          ),
                                          itemCount: state.customPastShiftModel
                                                  .projects?.length ??
                                              0,
                                        );
                                      }),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                BlocBuilder<ShiftsCubit, ShiftsState>(
                                  builder: (context, state) {
                                    if (state.customShiftFetchStatus !=
                                        CustomShiftFetchStatus.loaded) {
                                      return Column(
                                        children: [
                                          CustomShimmer(
                                            height: 88,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          CustomShimmer(
                                            height: 88,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          CustomShimmer(
                                            height: 88,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                          ),
                                        ],
                                      );
                                    } else {
                                      List<ShiftsByDay> shiftsByDay = [];
                                      state.customPastShiftModel.shiftsByWeek
                                          ?.forEach((element) {
                                        shiftsByDay
                                            .addAll(element.shiftsByDay ?? []);
                                      });
                                      return ListView.separated(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder: (context, ind) {
                                            return PastShiftWidget(
                                              refreshShift: (_) {
                                                shiftsCubit.getCustomPastShift(
                                                    companyId: widget
                                                            .dcubit
                                                            .state
                                                            .companyProfileModel
                                                            .id ??
                                                        0);
                                              },
                                              date: shiftsByDay[ind].dayStart ??
                                                  DateTime.now(),
                                              shifts:
                                                  shiftsByDay[ind].shifts ?? [],
                                              time: shiftsByDay[ind]
                                                      .totalDayTime ??
                                                  const Time(
                                                      hours: 0, minutes: 0),
                                              cubit: widget.dcubit,
                                            );
                                          },
                                          separatorBuilder: (context, index) {
                                            return const SizedBox(
                                              height: 8,
                                            );
                                          },
                                          itemCount: shiftsByDay.length);
                                    }
                                  },
                                ),
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
                                  return SendFeedbackBottomSheetWidget(
                                      userEmail: authCubit
                                              .state.userProfileModel?.email ??
                                          "",
                                      note: note);
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
      ),
    );
  }
}

class SendFeedbackBottomSheetWidget extends StatelessWidget {
  const SendFeedbackBottomSheetWidget({
    super.key,
    required this.note,
    required this.userEmail,
  });

  final TextEditingController note;
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> buttonLoading = ValueNotifier(false);
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        decoration: BoxDecoration(
            color: ColorConstant.borderFillCOlor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12))),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: ModelBAr(),
              ),
              const SizedBox(
                height: 28,
              ),
              Text(
                'Send Feedback',
                style: AppStyles.bottomSheetTextStyle,
              ),
              const SizedBox(
                height: 40,
              ),
              Text('How was your experience?',
                  style: TextStyle(
                      fontWeight: FontWeightConstant.normal,
                      color: ColorConstant.backgroundGrey)),
              const SizedBox(
                height: 16,
              ),
              NoteWidget(
                hintText: 'Write here.....',
                controller: note,
                onTap: () {},
                max: 6,
              ),
              const SizedBox(
                height: 16,
              ),
              ValueListenableBuilder<bool>(
                valueListenable: buttonLoading,
                builder: (BuildContext context, dynamic value, Widget? child) {
                  return CustomnButton(
                    loading: buttonLoading.value,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    text: 'Send Feedback',
                    onTap: () async {
                      try {
                        buttonLoading.value = true;
                        Dio dio = Dio();
                        await dio.post(ApiContants.getDiscordURL, data: {
                          "content":
                              "```feedback - ${note.text.trim()} \nuser-$userEmail```",
                        });
                        note.clear();
                        buttonLoading.value = false;
                        Navigator.pop(context);
                        Func.showSnacksBar(
                            message: "Feedback sent successfully!",
                            context: context,
                            status: SnacksBarStatus.success);
                      } on DioException catch (e) {
                        buttonLoading.value = false;
                        Func.showSnacksBar(
                            message: e.message.toString(),
                            context: context,
                            status: SnacksBarStatus.error);
                      } catch (e) {
                        buttonLoading.value = false;
                        Func.showSnacksBar(
                            message: e.toString(),
                            context: context,
                            status: SnacksBarStatus.error);
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ));
  }
}

class CalculateHoursBottomSheet extends StatefulWidget {
  final DashboardCubit dashboardCubit;
  const CalculateHoursBottomSheet({
    required this.dashboardCubit,
    super.key,
  });

  @override
  State<CalculateHoursBottomSheet> createState() =>
      _CalculateHoursBottomSheetState();
}

class _CalculateHoursBottomSheetState extends State<CalculateHoursBottomSheet> {
  late DateTime startDate = DateTime.now().subtract(const Duration(days: 7));
  late DateTime endDate = DateTime.now();

  final ValueNotifier<bool> buttonLoading = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                width: 33,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 28),
              child: Row(
                children: [
                  const Icon(
                    CupertinoIcons.calendar_circle,
                    color: Colors.orange,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'View total hours',
                    style:
                        AppStyles.bottomSheetTextStyle.copyWith(fontSize: 18),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'From',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeightConstant.bold,
                      color: ColorConstant.textGrey2),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 10, horizontal: 16),
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstant.borderGrey),
                      borderRadius: BorderRadius.circular(12)),
                  child: InkWell(
                    onTap: () async {
                      DateTime pickedDate = await Func.datePicker(
                          firstDate: DateTime(2010),
                          initialDate: startDate,
                          endDate: endDate,
                          context: context);
                      setState(() {
                        startDate = pickedDate;
                      });
                    },
                    child: Text(
                      startDate.toShortMonthDay(),
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeightConstant.bold,
                          color: ColorConstant.textGrey2),
                    ),
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
                  padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 10, horizontal: 16),
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstant.borderGrey),
                      borderRadius: BorderRadius.circular(12)),
                  child: InkWell(
                    onTap: () async {
                      DateTime pickedDate = await Func.datePicker(
                          firstDate: DateTime(2010),
                          initialDate: endDate,
                          context: context);
                      setState(() {
                        if (startDate.isAfter(pickedDate)) {
                          startDate = pickedDate;
                        }
                        endDate = pickedDate;
                      });
                    },
                    child: Text(
                      endDate.toShortMonthDay(),
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeightConstant.bold,
                          color: ColorConstant.textGrey2),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ValueListenableBuilder<bool>(
              valueListenable: buttonLoading,
              builder: (BuildContext context, dynamic value, Widget? child) {
                return CustomnButton(
                  loading: value,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  text: 'Calculate',
                  onTap: () async {
                    try {
                      buttonLoading.value = true;
                      PastShiftModel pastShiftModel = await ShiftRepo()
                          .getPastShift(
                              startDate: startDate.toUtc().toIso8601String(),
                              authToken: widget.dashboardCubit.authToken,
                              endDate: endDate.toUtc().toIso8601String(),
                              companyId: widget.dashboardCubit.companyId);

                      Navigator.pop(context);
                      showModalBottomSheet<void>(
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return TotalHoursWidget(
                                pastShiftModel: pastShiftModel);
                          });
                    } catch (e) {
                      buttonLoading.value = false;
                      Func.showSnacksBar(
                          message: e.toString(),
                          context: context,
                          status: SnacksBarStatus.error);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TotalHoursWidget extends StatelessWidget {
  const TotalHoursWidget({
    super.key,
    required this.pastShiftModel,
  });

  final PastShiftModel pastShiftModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.85),
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        decoration: BoxDecoration(
            color: ColorConstant.borderFillCOlor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12))),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: ModelBAr(),
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Hours',
                    style: AppStyles.bottomSheetTextStyle,
                  ),
                  Text(
                    "${pastShiftModel.globalShiftTime?.hours ?? 0}h ${pastShiftModel.globalShiftTime?.minutes ?? 0}m",
                    style: AppStyles.bottomSheetTextStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Flexible(
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shrinkWrap: true,
                  itemCount: pastShiftModel.projects?.length ?? 0,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 16,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black.withOpacity(0.4),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: Color(Func.formatColor(
                                        (pastShiftModel.projects ?? [])[index]
                                                .colorCode ??
                                            "#ffffff")),
                                    shape: BoxShape.circle),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Center(
                                  child: Text(
                                (pastShiftModel.projects ?? [])[index].name ??
                                    "",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )),
                            ],
                          ),
                        ),
                        Text(
                          "${pastShiftModel.globalShiftTime?.hours ?? 0}h ${pastShiftModel.globalShiftTime?.minutes ?? 0}m",
                          style: AppStyles.bottomSheetTextStyle
                              .copyWith(fontSize: 18),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
