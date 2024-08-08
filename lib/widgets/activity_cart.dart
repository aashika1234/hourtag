import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hourtag/home/shifts/cubit/shifts_cubit.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

const TextStyle boldBlackTextStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22);

const TextStyle boldGreyTextStyle =
    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 19);

class ActivityCart extends StatefulWidget {
  final CustomYourActivityModel customYourActivityModel;
  final double totalHours;
  final String type;
  const ActivityCart({
    required this.customYourActivityModel,
    required this.totalHours,
    required this.type,
    super.key,
  });

  @override
  State<ActivityCart> createState() => _ActivityCartState();
}

class _ActivityCartState extends State<ActivityCart>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late ValueNotifier<bool> expanded;
  late double percentage;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    expanded = ValueNotifier(false);
    percentage = (widget.customYourActivityModel.totalHour +
            widget.customYourActivityModel.totalMinute) /
        (widget.totalHours * 60 * 60);
    expanded.addListener(() {
      if (expanded.value) {
        animationController.forward();
      } else {
        animationController.reverse();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: ColorConstant.borderFillCOlor,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircularPercentIndicator(
                radius: 44.0,
                lineWidth: 7.0,
                backgroundColor: Colors.grey,
                percent: percentage,
                center: Text(
                  "${(percentage * 100).toInt().toString()}%",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                progressColor: Colors.green,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text:
                                '${widget.customYourActivityModel.totalHour ~/ 3600}',
                            style: boldBlackTextStyle),
                        const TextSpan(text: 'h', style: boldGreyTextStyle),
                        TextSpan(
                            text:
                                ' ${widget.customYourActivityModel.totalMinute ~/ 60}',
                            style: boldBlackTextStyle),
                        const TextSpan(text: 'm of ', style: boldGreyTextStyle),
                        TextSpan(
                            text: '${widget.totalHours.toInt()}',
                            style: boldBlackTextStyle),
                        const TextSpan(text: 'h', style: boldGreyTextStyle),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Average ${widget.customYourActivityModel.average.formatDuration()} per day',
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  )
                ],
              )
            ],
          ),
          AnimatedBuilder(
            animation: animationController,
            builder: (context, child) {
              return Container(
                height: 50 +
                    (62 *
                            widget.customYourActivityModel.customPastShiftModel
                                .length) *
                        animationController.value,
                margin: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    color: ColorConstant.containerBackground,
                    borderRadius: BorderRadius.circular(12)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      animationController.value == 0
                          ? const SizedBox()
                          : Column(
                              children: List.generate(
                                  widget.customYourActivityModel
                                      .customPastShiftModel.length,
                                  (ind) => WeeklyDetailedShiftCart(
                                      title: widget.customYourActivityModel
                                          .customPastShiftModel[ind].title,
                                      shiftCount: widget.customYourActivityModel
                                          .customPastShiftModel[ind].shiftCount,
                                      totalHours: widget.customYourActivityModel
                                          .customPastShiftModel[ind].hours,
                                      totalMinutes: widget
                                          .customYourActivityModel
                                          .customPastShiftModel[ind]
                                          .minutes))),
                      InkWell(
                        onTap: () => expanded.value = !expanded.value,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Transform.rotate(
                                angle: 3.1 * animationController.value,
                                child: const Icon(
                                  CupertinoIcons.chevron_down,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'View ${widget.type.toLowerCase()} shifts',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

extension DurationExtension on double {
  String formatDuration() {
    if (this < 60) {
      return '${toInt()}s';
    } else if (this < 3600) {
      final minutes = (this / 60).floor();
      final seconds = (this % 60).floor();
      return '${minutes}m ${seconds}s';
    } else {
      final hours = (this / 3600).floor();
      final minutes = ((this % 3600) / 60).floor();
      return '${hours}h ${minutes}m';
    }
  }
}

class WeeklyDetailedShiftCart extends StatelessWidget {
  final String title;
  final String shiftCount;
  final int totalHours;
  final int totalMinutes;
  const WeeklyDetailedShiftCart({
    required this.title,
    required this.shiftCount,
    required this.totalHours,
    required this.totalMinutes,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          color: ColorConstant.containerBackground,
          borderRadius: BorderRadius.circular(5)),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: SizedBox(
                  width: 18,
                  child: Icon(
                    Icons.circle,
                    size: 6,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              Text(
                '$shiftCount shifts',
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: '$totalHours',
                    style: boldBlackTextStyle.copyWith(fontSize: 16)),
                TextSpan(
                    text: 'h', style: boldGreyTextStyle.copyWith(fontSize: 14)),
                TextSpan(
                    text: ' $totalMinutes',
                    style: boldBlackTextStyle.copyWith(fontSize: 16)),
                TextSpan(
                    text: 'm', style: boldGreyTextStyle.copyWith(fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DateRange {
  final DateTime startDate;
  final DateTime endDate;
  final int totalDays;

  DateRange({
    required this.startDate,
    required this.endDate,
    required this.totalDays,
  });
}

DateRange getDateRange(String type) {
  final now = DateTime.now();
  late DateTime startDate;
  late DateTime endDate;
  late int totalDays;

  if (type == 'WEEKLY') {
    // Calculate start date of the current week
    startDate = now.subtract(Duration(days: now.weekday - 1));

    // Set end date to the current date
    endDate = now;

    // Calculate total days from start date to end date
    totalDays = endDate.difference(startDate).inDays + 1;
  } else if (type == 'MONTHLY') {
    // Calculate start date of the current month
    startDate = DateTime(now.year, now.month, 1);

    // Set end date to the current date
    endDate = now;

    // Calculate total days from start date to end date
    totalDays = endDate.difference(startDate).inDays + 1;
  } else {
    throw ArgumentError('Invalid type: $type');
  }

  return DateRange(
    startDate: startDate,
    endDate: endDate,
    totalDays: totalDays,
  );
}
