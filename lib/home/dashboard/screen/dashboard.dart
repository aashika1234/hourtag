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
    widget.cubit.getUserProfile();
    super.initState();
  }

  TimeParts formatTime(int totalSeconds) {
    final hours = totalSeconds ~/ 3600;
    final minutes = (totalSeconds % 3600) ~/ 60;
    final seconds = totalSeconds % 60;
    return TimeParts(hours.toString(), minutes.toString(), seconds.toString());
  }

  TeamActivityModel getSpecificData(List<TeamActivityModel> data, int userId) {
    for (var item in data) {
      if (item.user?.id == userId) {
        return item;
      }
    }
    return const TeamActivityModel();
  }

  TextEditingController note = TextEditingController();
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBAr(),
              const SizedBox(
                height: 63,
              ),
              BlocBuilder<DashboardCubit, DashboardState>(
                bloc: widget.cubit,
                builder: (context, state) {
                  TeamActivityModel data = getSpecificData(
                      state.teamActivityModel, state.userProfileModel.id ?? 0);
                  TimeParts timeParts =
                      formatTime(widget.cubit.state.durationInSeconds);
                  return state.status == Status.loading
                      ? Padding(
                          padding: const EdgeInsets.only(top: 200),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(
                                color: ColorConstant.primaryColor,
                              ),
                            ],
                          ),
                        )
                      : Column(
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
                              state.userProfileModel.name ?? "",
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
                            Row(children: [
                              Text(
                                data.total_shift_time?.hours.toString() ?? '0',
                                style: AppStyles.darkLargeTextStyle,
                              ),
                              Text(
                                'h ',
                                style: AppStyles.lightLargeTextStyle,
                              ),
                              Text(
                                data.total_shift_time?.minutes.toString() ??
                                    '0',
                                style: AppStyles.darkLargeTextStyle,
                              ),
                              Text(
                                'm Today',
                                style: AppStyles.lightLargeTextStyle,
                              ),
                            ]),
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
                                  SizedBox(
                                    height: 50,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, ind) {
                                        return InkWell(
                                          onTap: () {
                                            context
                                                .read<DashboardCubit>()
                                                .changeSelectedIndex(ind);
                                          },
                                          child: ProjectList(
                                            categories: List.generate(
                                                state.companyProfileModel
                                                        .projects?.length ??
                                                    0,
                                                (index) => state
                                                    .companyProfileModel
                                                    .projects![index]
                                                    .name!),
                                            color: List.generate(
                                                state.companyProfileModel
                                                        .projects?.length ??
                                                    0, (index) {
                                              String colorCode = state
                                                      .companyProfileModel
                                                      .projects![index]
                                                      .colorCode ??
                                                  '#ffffff';
                                              return Func.formatColor(
                                                  colorCode);
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
                                  RichText(
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
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  SizedBox(
                                    child: state.started
                                        ? InkWell(
                                            child: InkWell(
                                                onTap: () async {
                                                  showModalBottomSheet<void>(
                                                          context: context,
                                                          isScrollControlled: true,
                                                          builder: (BuildContext
                                                              context) {
                                                            return BlocProvider
                                                                .value(
                                                              value:
                                                                  widget.cubit,
                                                              child: Container(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.75,
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                        18,
                                                                    horizontal:
                                                                        20),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .borderFillCOlor,
                                                                    borderRadius: const BorderRadius
                                                                        .only(
                                                                        topLeft:
                                                                            Radius.circular(
                                                                                12),
                                                                        topRight:
                                                                            Radius.circular(12))),
                                                                child: Center(
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: <Widget>[
                                                                      Center(
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              33,
                                                                          height:
                                                                              5,
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.white,
                                                                              borderRadius: BorderRadius.circular(12)),
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            28,
                                                                      ),
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            'Current shift',
                                                                            style:
                                                                                AppStyles.smallText,
                                                                          ),
                                                                          Text(
                                                                            'Delete shift',
                                                                            style:
                                                                                TextStyle(color: ColorConstant.red, fontWeight: FontWeightConstant.normal),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            16,
                                                                      ),
                                                                      BlocBuilder<
                                                                          DashboardCubit,
                                                                          DashboardState>(
                                                                        builder:
                                                                            (context,
                                                                                state) {
                                                                          TimeParts
                                                                              timeParts =
                                                                              formatTime(widget.cubit.state.durationInSeconds);
                                                                          return Row(
                                                                            children: [
                                                                              Text(
                                                                                timeParts.hours.toString().padLeft(2, '0'),
                                                                                style: AppStyles.largeDarkText,
                                                                              ),
                                                                              Text(
                                                                                ':',
                                                                                style: AppStyles.largeLightText,
                                                                              ),
                                                                              Text(
                                                                                timeParts.minutes.toString().padLeft(2, '0'),
                                                                                style: AppStyles.largeDarkText,
                                                                              ),
                                                                              Text(
                                                                                ':',
                                                                                style: AppStyles.largeLightText,
                                                                              ),
                                                                              Text(
                                                                                timeParts.seconds.toString().padLeft(2, '0'),
                                                                                style: AppStyles.largeDarkText,
                                                                              )
                                                                            ],
                                                                          );
                                                                        },
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            40,
                                                                      ),
                                                                      Text(
                                                                        'Your Project',
                                                                        style: AppStyles
                                                                            .smallText,
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            16,
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
                                                                            child:
                                                                                ListView.separated(
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemBuilder: (context, ind) {
                                                                                return InkWell(
                                                                                  onTap: () {
                                                                                    context.read<DashboardCubit>().changeSelectedIndex(ind);
                                                                                  },
                                                                                  child: ProjectList(
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
                                                                              separatorBuilder: (context, index) => const SizedBox(
                                                                                width: 8,
                                                                              ),
                                                                              itemCount: state.companyProfileModel.projects?.length ?? 0,
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            40,
                                                                      ),
                                                                      Text(
                                                                          'Shift note',
                                                                          style:
                                                                              AppStyles.smallText),
                                                                      const SizedBox(
                                                                        height:
                                                                            16,
                                                                      ),
                                                                      NoteWidget(
                                                                        hintText:
                                                                            'Your shift details',
                                                                        controller:
                                                                            note,
                                                                        onTap:
                                                                            () {
                                                                          widget
                                                                              .cubit
                                                                              .stopTimer(note.text);
                                                                        },
                                                                        max: 6,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          })
                                                      .then((value) => widget
                                                          .cubit
                                                          .resetTimer());
                                                },
                                                child: DashboardButton(
                                                  text: 'End Shift',
                                                  icon: Icon(
                                                    Icons.pause,
                                                    color: ColorConstant.red,
                                                  ),
                                                  containerColor: ColorConstant
                                                      .backgroundRed,
                                                  textColor: ColorConstant.red,
                                                )),
                                          )
                                        : InkWell(
                                            onTap: () {
                                              widget.cubit.startTimer(true);
                                            },
                                            child: DashboardButton(
                                              text: 'Start Shift',
                                              icon:
                                                  const Icon(Icons.play_arrow),
                                              containerColor:
                                                  ColorConstant.primaryColor,
                                              textColor:
                                                  ColorConstant.borderFillCOlor,
                                            ),
                                          ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
