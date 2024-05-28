import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourtag/cubit/cubit/auth_cubit.dart';
import 'package:hourtag/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:hourtag/home/dashboard/model/team_activity/team_activity_model.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:hourtag/util/functions.dart';
import 'package:hourtag/util/global_style.dart';
import 'package:hourtag/util/weight_constant.dart';
import 'package:hourtag/widgets/custom_appbar.dart';
import 'package:hourtag/home/dashboard/widgets/dashboard_button.dart';
import 'package:hourtag/home/dashboard/widgets/project_list.dart';
import 'package:hourtag/widgets/note_widget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key, required this.cubit});
  final DashboardCubit cubit;
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

late AuthCubit authCubit;

class TimeParts {
  String hours = '00';
  String minutes = '00';
  String seconds = '00';

  TimeParts(this.hours, this.minutes, this.seconds);
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    authCubit = context.read<AuthCubit>();
    super.initState();
  }

  TimeParts formatTime(int totalSeconds) {
    final hours = totalSeconds ~/ 3600;
    final minutes = (totalSeconds % 3600) ~/ 60;
    final seconds = totalSeconds % 60;
    return TimeParts(hours.toString(), minutes.toString(), seconds.toString());
  }

  TextEditingController note = TextEditingController();
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardCubit>.value(
      value: widget.cubit,
      child: Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
          child: Column(
            children: [
              const CustomAppBAr(),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome,',
                    style: TextStyle(
                        fontWeight: FontWeightConstant.normal,
                        color: ColorConstant.textGrey2,
                        fontSize: 48),
                  ),
                  const SizedBox(),
                  Text(
                    widget.cubit.state.userProfileModel.name ?? "",
                    style: const TextStyle(
                        fontWeight: FontWeightConstant.normal,
                        color: Colors.white,
                        fontSize: 48),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${Func.extractMonth(DateTime.now().month)} ${DateTime.now().day}',
                    style: AppStyles.smallText,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  BlocBuilder<DashboardCubit, DashboardState>(
                    bloc: widget.cubit,
                    builder: (context, state) {
                      return Row(children: [
                        Text(
                          state.weeklyShiftModel.todaysShifts?.totalShiftTime
                                  ?.hours
                                  .toString() ??
                              '0',
                          style: AppStyles.darkLargeTextStyle,
                        ),
                        Text(
                          'h ',
                          style: AppStyles.lightLargeTextStyle,
                        ),
                        Text(
                          state.weeklyShiftModel.todaysShifts?.totalShiftTime
                                  ?.minutes
                                  .toString() ??
                              '0',
                          style: AppStyles.darkLargeTextStyle,
                        ),
                        Text(
                          'm Today',
                          style: AppStyles.lightLargeTextStyle,
                        ),
                      ]);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: ColorConstant.borderFillCOlor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'What are you working on today?',
                          style: AppStyles.smallText,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        BlocBuilder<DashboardCubit, DashboardState>(
                          bloc: widget.cubit,
                          builder: (context, state) {
                            return SizedBox(
                              height: 50,
                              child: ListView.separated(
                                controller: widget.cubit.controller,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, ind) {
                                  return InkWell(
                                    onTap: () {
                                      context
                                          .read<DashboardCubit>()
                                          .changeSelectedIndex(ind);
                                    },
                                    child: AutoScrollTag(
                                      key: ValueKey(ind),
                                      controller: widget.cubit.controller,
                                      index: ind,
                                      child: ProjectList(
                                        categories: List.generate(
                                            state.companyProfileModel.projects
                                                    ?.length ??
                                                0,
                                            (index) => state.companyProfileModel
                                                .projects![index].name!),
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
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                  width: 8,
                                ),
                                itemCount: state
                                        .companyProfileModel.projects?.length ??
                                    0,
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Current shift',
                          style: AppStyles.smallText,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        BlocBuilder<DashboardCubit, DashboardState>(
                          builder: (context, state) {
                            TimeParts timeParts = formatTime(
                                widget.cubit.state.durationInSeconds);
                            return RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: timeParts.hours
                                        .toString()
                                        .padLeft(2, '0'),
                                    style: AppStyles.largeDarkText,
                                  ),
                                  TextSpan(
                                    text: ':',
                                    style: AppStyles.largeLightText,
                                  ),
                                  TextSpan(
                                    text: timeParts.minutes
                                        .toString()
                                        .padLeft(2, '0'),
                                    style: AppStyles.largeDarkText,
                                  ),
                                  TextSpan(
                                    text: ':',
                                    style: AppStyles.largeLightText,
                                  ),
                                  TextSpan(
                                    text: timeParts.seconds
                                        .toString()
                                        .padLeft(2, '0'),
                                    style: AppStyles.largeDarkText,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        BlocBuilder<DashboardCubit, DashboardState>(
                          builder: (context, state) {
                            return SizedBox(
                              child: state.started
                                  ? InkWell(
                                      child: InkWell(
                                          onTap: () async {
                                            showModalBottomSheet<void>(
                                                    context: context,
                                                    isScrollControlled: true,
                                                    builder:
                                                        (BuildContext context) {
                                                      return BlocProvider.value(
                                                        value: widget.cubit,
                                                        child: Container(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.75,
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 18,
                                                                  horizontal:
                                                                      20),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .borderFillCOlor,
                                                              borderRadius: const BorderRadius
                                                                  .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          12),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          12))),
                                                          child: Center(
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: <Widget>[
                                                                Center(
                                                                  child:
                                                                      Container(
                                                                    width: 33,
                                                                    height: 5,
                                                                    decoration: BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(12)),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  height: 28,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Current shift',
                                                                      style: AppStyles
                                                                          .smallText,
                                                                    ),
                                                                    InkWell(
                                                                      onTap:
                                                                          () {
                                                                        showShiftDelete(
                                                                            context,
                                                                            () async {
                                                                          try {
                                                                            await widget.cubit.delete(
                                                                              state.ongoingShiftModel.ongoingShift?.id ?? 0,
                                                                            );
                                                                            final snackBar =
                                                                                SnackBar(
                                                                              backgroundColor: ColorConstant.blue,
                                                                              content: const Text(
                                                                                'Successfully deleted!',
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(color: Colors.white),
                                                                              ),
                                                                              behavior: SnackBarBehavior.floating,
                                                                            );
                                                                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                                          } catch (e) {
                                                                            final snackBar =
                                                                                SnackBar(
                                                                              backgroundColor: ColorConstant.red,
                                                                              content: const Text(
                                                                                'Failed to delete the shift!',
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(color: Colors.white),
                                                                              ),
                                                                              behavior: SnackBarBehavior.floating,
                                                                            );
                                                                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                                          }
                                                                          Navigator.pop(
                                                                              context);
                                                                          Navigator.pop(
                                                                              context);
                                                                          widget
                                                                              .cubit
                                                                              .refetchDetailsData();
                                                                        });
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'Delete shift',
                                                                        style: TextStyle(
                                                                            color:
                                                                                ColorConstant.red,
                                                                            fontWeight: FontWeightConstant.normal),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                BlocBuilder<
                                                                    DashboardCubit,
                                                                    DashboardState>(
                                                                  builder:
                                                                      (context,
                                                                          state) {
                                                                    TimeParts
                                                                        timeParts =
                                                                        formatTime(widget
                                                                            .cubit
                                                                            .state
                                                                            .durationInSeconds);
                                                                    return Row(
                                                                      children: [
                                                                        Text(
                                                                          timeParts
                                                                              .hours
                                                                              .toString()
                                                                              .padLeft(2, '0'),
                                                                          style:
                                                                              AppStyles.largeDarkText,
                                                                        ),
                                                                        Text(
                                                                          ':',
                                                                          style:
                                                                              AppStyles.largeLightText,
                                                                        ),
                                                                        Text(
                                                                          timeParts
                                                                              .minutes
                                                                              .toString()
                                                                              .padLeft(2, '0'),
                                                                          style:
                                                                              AppStyles.largeDarkText,
                                                                        ),
                                                                        Text(
                                                                          ':',
                                                                          style:
                                                                              AppStyles.largeLightText,
                                                                        ),
                                                                        Text(
                                                                          timeParts
                                                                              .seconds
                                                                              .toString()
                                                                              .padLeft(2, '0'),
                                                                          style:
                                                                              AppStyles.largeDarkText,
                                                                        )
                                                                      ],
                                                                    );
                                                                  },
                                                                ),
                                                                const SizedBox(
                                                                  height: 40,
                                                                ),
                                                                Text(
                                                                  'Your Project',
                                                                  style: AppStyles
                                                                      .smallText,
                                                                ),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                BlocBuilder<
                                                                    DashboardCubit,
                                                                    DashboardState>(
                                                                  builder:
                                                                      (context,
                                                                          state) {
                                                                    return SizedBox(
                                                                      height:
                                                                          50,
                                                                      child: ListView
                                                                          .separated(
                                                                        scrollDirection:
                                                                            Axis.horizontal,
                                                                        itemBuilder:
                                                                            (context,
                                                                                ind) {
                                                                          return InkWell(
                                                                            onTap:
                                                                                () {
                                                                              context.read<DashboardCubit>().changeSelectedIndex(ind);
                                                                            },
                                                                            child:
                                                                                ProjectList(
                                                                              categories: List.generate(state.companyProfileModel.projects?.length ?? 0, (index) => state.companyProfileModel.projects![index].name!),
                                                                              color: List.generate(state.companyProfileModel.projects?.length ?? 0, (index) {
                                                                                String colorCode = state.companyProfileModel.projects![index].colorCode ?? '#ffffff';
                                                                                return Func.formatColor(colorCode);
                                                                              }),
                                                                              index: ind,
                                                                              stateIndex: state.selectedIndex,
                                                                            ),
                                                                          );
                                                                        },
                                                                        separatorBuilder:
                                                                            (context, index) =>
                                                                                const SizedBox(
                                                                          width:
                                                                              8,
                                                                        ),
                                                                        itemCount:
                                                                            state.companyProfileModel.projects?.length ??
                                                                                0,
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                                const SizedBox(
                                                                  height: 40,
                                                                ),
                                                                Text(
                                                                    'Shift note',
                                                                    style: AppStyles
                                                                        .smallText),
                                                                const SizedBox(
                                                                  height: 16,
                                                                ),
                                                                Expanded(
                                                                  child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            NoteWidget(
                                                                          hintText:
                                                                              'Your shift details',
                                                                          controller:
                                                                              note,
                                                                          onTap:
                                                                              () {},
                                                                          max:
                                                                              6,
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                        width:
                                                                            10,
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          widget.cubit.stopTimer(
                                                                              note.text,
                                                                              context);
                                                                          note.clear();
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              75,
                                                                          width:
                                                                              75,
                                                                          padding: const EdgeInsets
                                                                              .symmetric(
                                                                              vertical: 18,
                                                                              horizontal: 16),
                                                                          decoration: BoxDecoration(
                                                                              color: ColorConstant.primaryColor,
                                                                              borderRadius: BorderRadius.circular(12)),
                                                                          child: Center(
                                                                              child: Text(
                                                                            'Send',
                                                                            style: TextStyle(
                                                                                color: ColorConstant.borderFillCOlor,
                                                                                fontSize: 17,
                                                                                fontWeight: FontWeightConstant.bold),
                                                                          )),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    })
                                                .then((value) =>
                                                    widget.cubit.resetTimer());
                                          },
                                          child: DashboardButton(
                                            widget: Text(
                                              'End Shift',
                                              style: TextStyle(
                                                  color: ColorConstant.red,
                                                  fontSize: 17,
                                                  fontWeight:
                                                      FontWeightConstant.bold),
                                            ),
                                            icon: Icon(
                                              Icons.pause,
                                              color: ColorConstant.red,
                                            ),
                                            containerColor:
                                                ColorConstant.backgroundRed,
                                          )),
                                    )
                                  : InkWell(
                                      onTap: () {
                                        widget.cubit.startTaskTimer();
                                      },
                                      child: DashboardButton(
                                        widget: state.status ==
                                                DashboardStatus.loading
                                            ? const Center(
                                                child: SizedBox(
                                                    width: 25,
                                                    child:
                                                        CircularProgressIndicator()))
                                            : Text(
                                                'Start Shift',
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .borderFillCOlor,
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeightConstant
                                                            .bold),
                                              ),
                                        icon: state.status ==
                                                DashboardStatus.loading
                                            ? null
                                            : const Icon(Icons.play_arrow),
                                        containerColor:
                                            ColorConstant.primaryColor,
                                      ),
                                    ),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}

Future<void> showShiftDelete(BuildContext context, void Function()? onPressed) {
  return showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: const Text("Are you sure you want to delete this shift?"),
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
          onPressed: onPressed,
          child: Text('Delete', style: TextStyle(color: ColorConstant.red)),
        ),
      ],
    ),
  );
}
