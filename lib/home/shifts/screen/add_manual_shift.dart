import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourtag/cubit/cubit/auth_cubit.dart';
import 'package:hourtag/home/dashboard/widgets/project_list.dart';
import 'package:hourtag/home/shifts/cubit/manual_shift_date_picker_cubit.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/date_time_helper.dart';
import 'package:hourtag/util/functions.dart';
import 'package:hourtag/util/global_style.dart';
import 'package:hourtag/widgets/note_widget.dart';
import 'package:hourtag/widgets/shifts/manual_shift_time_outline.dart';

import '../../../util/weight_constant.dart';
import '../../dashboard/cubit/dashboard_cubit.dart';
import '../../dashboard/model/ongoing_shifts/ongoing_shift_model.dart';

Future<void> addManualShift(BuildContext context,
    {required DashboardCubit dcubit, Shift? shift}) {
  TextEditingController note = TextEditingController(text: shift?.note ?? "");
  if (shift != null) {
    dcubit.changeSelectedIndex(dcubit.state.companyProfileModel.projects
            ?.indexWhere((element) => element.id == shift.projectId) ??
        -1);
  }
  ManualShiftDatePickerCubit manualShiftDatePickerCubit =
      ManualShiftDatePickerCubit(
          shift: shift,
          authToken: context.read<AuthCubit>().state.authToken,
          companyID:
              dcubit.state.userProfileModel.selectedCompany?.company?.id ?? -1);
  return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return BlocProvider.value(
          value: manualShiftDatePickerCubit,
          child: BlocListener<ManualShiftDatePickerCubit,
              ManualShiftDatePickerState>(
            listener: (context, state) {
              if (state.status == Status.error) {
                Func.showSnacksBar(
                    context: context,
                    message: state.error.toString(),
                    status: SnacksBarStatus.error);
                manualShiftDatePickerCubit.neutralizeError();
              } else if (state.status == Status.loaded) {
                if (state.error != "SUCCESS") {
                  dcubit.refetchDetailsData();
                }
                Func.showSnacksBar(
                    context: context,
                    message: state.error == "PENDING"
                        ? "Shift request sent successfully"
                        : "Shift added successfully",
                    status: SnacksBarStatus.success);
                Navigator.pop(context);
              }
            },
            listenWhen: (previous, current) {
              return previous.status != current.status;
            },
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.85,
                child: SafeArea(
                  bottom: false,
                  child: Scaffold(
                    backgroundColor: ColorConstant.borderFillCOlor,
                    body: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
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
                              child: Text(
                                'Add a manual shift',
                                style: AppStyles.bottomSheetTextStyle,
                              ),
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
                                BlocBuilder<ManualShiftDatePickerCubit,
                                    ManualShiftDatePickerState>(
                                  bloc: manualShiftDatePickerCubit,
                                  builder: (context, state) {
                                    return Text(
                                      calculateTimeDifference(
                                          state.manualShiftStartDate.copyWith(
                                              hour: state
                                                  .manualShiftStartTime.hour,
                                              minute: state
                                                  .manualShiftStartTime.minute),
                                          state.manualShiftEndDate.copyWith(
                                              hour:
                                                  state.manualShiftEndTime.hour,
                                              minute: state
                                                  .manualShiftEndTime.minute)),
                                      style: AppStyles.largeDarkText,
                                    );
                                  },
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 16),
                              child: Text(
                                'Your Project',
                                style: TextStyle(
                                    color: ColorConstant.backgroundGrey,
                                    fontWeight: FontWeightConstant.normal),
                              ),
                            ),
                            BlocBuilder<DashboardCubit, DashboardState>(
                              bloc: dcubit,
                              builder: (context, state) {
                                return SizedBox(
                                  height: 50,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, ind) {
                                      return InkWell(
                                        onTap: () {
                                          dcubit.changeSelectedIndex(ind);
                                        },
                                        child: ProjectList(
                                          categories: List.generate(
                                              state.companyProfileModel.projects
                                                      ?.length ??
                                                  0,
                                              (index) => state
                                                  .companyProfileModel
                                                  .projects![index]
                                                  .name!),
                                          color: List.generate(
                                              state.companyProfileModel.projects
                                                      ?.length ??
                                                  0, (index) {
                                            String colorCode = state
                                                    .companyProfileModel
                                                    .projects![index]
                                                    .colorCode ??
                                                '#ffffff';
                                            return Func.formatColor(colorCode);
                                          }),
                                          index: ind,
                                          stateIndex: state.selectedIndex,
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(
                                      width: 8,
                                    ),
                                    itemCount: state.companyProfileModel
                                            .projects?.length ??
                                        0,
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 28,
                            ),
                            Column(
                              children: [
                                BlocBuilder<ManualShiftDatePickerCubit,
                                    ManualShiftDatePickerState>(
                                  bloc: manualShiftDatePickerCubit,
                                  builder: (context, state) {
                                    return ManualShiftTimeOutline(
                                        onTimeTap:
                                            state.status == Status.loading
                                                ? null
                                                : () async {
                                                    TimeOfDay pickedTime =
                                                        await Func.pickTime(
                                                            context: context);
                                                    if (calculateTimeDifferenceinSeconds(
                                                            state
                                                                .manualShiftStartDate
                                                                .copyWith(
                                                                    hour: pickedTime
                                                                        .hour,
                                                                    minute:
                                                                        pickedTime
                                                                            .minute),
                                                            state.manualShiftEndDate.copyWith(
                                                                hour: state
                                                                    .manualShiftEndTime
                                                                    .hour,
                                                                minute: state
                                                                    .manualShiftEndTime
                                                                    .minute)) >=
                                                        0) {
                                                      manualShiftDatePickerCubit
                                                          .changeManualShiftStartTime(
                                                              pickedTime);
                                                    } else {
                                                      manualShiftDatePickerCubit
                                                          .changeManualShiftStartDate(
                                                              state
                                                                  .manualShiftEndDate);
                                                      manualShiftDatePickerCubit
                                                          .changeManualShiftStartTime(
                                                              state
                                                                  .manualShiftEndTime);
                                                    }
                                                  },
                                        onDateTap:
                                            state.status == Status.loading
                                                ? null
                                                : () async {
                                                    DateTime pickedDate =
                                                        await Func.datePicker(
                                                            context: context);
                                                    if (calculateTimeDifferenceinSeconds(
                                                            pickedDate.copyWith(
                                                                hour: state
                                                                    .manualShiftStartTime
                                                                    .hour,
                                                                minute: state
                                                                    .manualShiftStartTime
                                                                    .minute),
                                                            state.manualShiftEndDate.copyWith(
                                                                hour: state
                                                                    .manualShiftEndTime
                                                                    .hour,
                                                                minute: state
                                                                    .manualShiftEndTime
                                                                    .minute)) >=
                                                        0) {
                                                      manualShiftDatePickerCubit
                                                          .changeManualShiftStartDate(
                                                              pickedDate);
                                                    } else {
                                                      manualShiftDatePickerCubit
                                                          .changeManualShiftStartDate(
                                                              state
                                                                  .manualShiftEndDate);
                                                      manualShiftDatePickerCubit
                                                          .changeManualShiftStartTime(
                                                              state
                                                                  .manualShiftEndTime);
                                                    }
                                                  },
                                        topic: 'Start time',
                                        date:
                                            '${Func.extractMonth(state.manualShiftStartDate.month)} ${state.manualShiftStartDate.day}',
                                        time:
                                            '${state.manualShiftStartTime.hour <= 9 ? "0${state.manualShiftStartTime.hour}" : "${state.manualShiftStartTime.hour}"}:${state.manualShiftStartTime.minute <= 9 ? "0${state.manualShiftStartTime.minute}" : "${state.manualShiftStartTime.minute}"}');
                                  },
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                BlocBuilder<ManualShiftDatePickerCubit,
                                    ManualShiftDatePickerState>(
                                  bloc: manualShiftDatePickerCubit,
                                  builder: (context, state) {
                                    return ManualShiftTimeOutline(
                                        onTimeTap:
                                            state.status == Status.loading
                                                ? null
                                                : () async {
                                                    TimeOfDay pickedTime =
                                                        await Func.pickTime(
                                                            context: context);
                                                    if (calculateTimeDifferenceinSeconds(
                                                            state
                                                                .manualShiftStartDate
                                                                .copyWith(
                                                                    hour: state
                                                                        .manualShiftStartTime
                                                                        .hour,
                                                                    minute: state
                                                                        .manualShiftStartTime
                                                                        .minute),
                                                            state.manualShiftEndDate.copyWith(
                                                                hour: pickedTime
                                                                    .hour,
                                                                minute: pickedTime
                                                                    .minute)) >=
                                                        0) {
                                                      manualShiftDatePickerCubit
                                                          .changeManualShiftEndTime(
                                                              pickedTime);
                                                    } else {
                                                      manualShiftDatePickerCubit
                                                          .changeManualShiftEndTime(
                                                              state
                                                                  .manualShiftStartTime);
                                                      manualShiftDatePickerCubit
                                                          .changeManualShiftEndDate(
                                                              state
                                                                  .manualShiftStartDate);
                                                    }
                                                  },
                                        onDateTap: state.status ==
                                                Status.loading
                                            ? null
                                            : () async {
                                                DateTime pickedDate =
                                                    await Func.datePicker(
                                                        context: context,
                                                        initialDate: state
                                                            .manualShiftStartDate,
                                                        endDate: state
                                                            .manualShiftStartDate
                                                            .add(const Duration(
                                                                hours: 24)));
                                                if (calculateTimeDifferenceinSeconds(
                                                        state
                                                            .manualShiftStartDate
                                                            .copyWith(
                                                                hour: state
                                                                    .manualShiftStartTime
                                                                    .hour,
                                                                minute: state
                                                                    .manualShiftStartTime
                                                                    .minute),
                                                        pickedDate.copyWith(
                                                            hour: state
                                                                .manualShiftEndTime
                                                                .hour,
                                                            minute: state
                                                                .manualShiftEndTime
                                                                .minute)) >=
                                                    0) {
                                                  manualShiftDatePickerCubit
                                                      .changeManualShiftEndDate(
                                                          pickedDate);
                                                } else {
                                                  manualShiftDatePickerCubit
                                                      .changeManualShiftEndDate(
                                                          state
                                                              .manualShiftStartDate);
                                                  manualShiftDatePickerCubit
                                                      .changeManualShiftEndTime(
                                                          state
                                                              .manualShiftStartTime);
                                                }
                                              },
                                        topic: 'End time',
                                        date:
                                            '${Func.extractMonth(state.manualShiftEndDate.month)} ${state.manualShiftEndDate.day}',
                                        time:
                                            '${state.manualShiftEndTime.hour <= 9 ? "0${state.manualShiftEndTime.hour}" : "${state.manualShiftEndTime.hour}"}:${state.manualShiftEndTime.minute <= 9 ? "0${state.manualShiftEndTime.minute}" : "${state.manualShiftEndTime.minute}"}');
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                            Text('Shift note',
                                style: TextStyle(
                                    fontWeight: FontWeightConstant.normal,
                                    color: ColorConstant.backgroundGrey)),
                            const SizedBox(
                              height: 16,
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: BlocBuilder<
                                        ManualShiftDatePickerCubit,
                                        ManualShiftDatePickerState>(
                                      bloc: manualShiftDatePickerCubit,
                                      builder: (context, state) {
                                        return NoteWidget(
                                          hintText: 'What did you do?',
                                          controller: note,
                                          onTap: () {},
                                          max: 6,
                                          readOnly:
                                              state.status == Status.loading,
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  BlocBuilder<ManualShiftDatePickerCubit,
                                      ManualShiftDatePickerState>(
                                    builder: (context, state) {
                                      return InkWell(
                                        onTap: () {
                                          manualShiftDatePickerCubit
                                              .addShiftRequest(
                                                  note: note.text,
                                                  projectId: dcubit
                                                      .state
                                                      .companyProfileModel
                                                      .projects![dcubit
                                                          .state.selectedIndex]
                                                      .id!);
                                          note.clear();
                                        },
                                        child: Container(
                                          height: 75,
                                          width: 75,
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 18, horizontal: 16),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: state.status == Status.loading
                                              ? const Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    SizedBox(
                                                        height: 30,
                                                        width: 30,
                                                        child:
                                                            CircularProgressIndicator()),
                                                  ],
                                                )
                                              : Center(
                                                  child: Text(
                                                  'Send',
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .borderFillCOlor,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeightConstant
                                                              .bold),
                                                )),
                                        ),
                                      );
                                    },
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ),
            ),
          ),
        );
      });
}
