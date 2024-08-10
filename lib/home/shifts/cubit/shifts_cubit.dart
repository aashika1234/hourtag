// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';

import 'package:hourtag/home/shifts/model/past_shifts/past_shift_model.dart';
import 'package:hourtag/home/shifts/repo/shift_repo.dart';
import 'package:hourtag/widgets/activity_cart.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

import '../model/shift_activity/shift_activity_model.dart';

part 'shifts_state.dart';

class ShiftsCubit extends Cubit<ShiftsState> {
  ShiftRepo shiftRepo = ShiftRepo();
  final String authToken;

  ShiftsCubit({required this.authToken})
      : super(ShiftsState.initial(authToken: authToken));
  void changeSelectedIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }

  Future<void> getShiftActivityData(int companyId) async {
    try {
      final shiftActivityModel =
          await shiftRepo.getActivityData(authToken, companyId);

      emit(state.copyWith(shiftActivityModel: shiftActivityModel));
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  void changePastShiftStartDate(DateTime date) {
    emit(state.copyWith(
        pastShiftStartDate:
            DateTime(date.year, date.month, date.day, 0, 0, 0, 0, 0)));
  }

  void changePastShiftEndDate(DateTime date) {
    emit(state.copyWith(
        pastShiftEndDate:
            DateTime(date.year, date.month, date.day, 23, 59, 59, 999, 999)));
  }

  Future<void> getCustomPastShift({required int companyId}) async {
    emit(
        state.copyWith(customShiftFetchStatus: CustomShiftFetchStatus.loading));
    try {
      PastShiftModel customPastShiftModel = await shiftRepo.getPastShift(
          companyId: companyId,
          startDate: state.pastShiftStartDate.toUtc().toIso8601String(),
          endDate: state.pastShiftEndDate.toUtc().toIso8601String(),
          authToken: authToken);

      emit(state.copyWith(
          customPastShiftModel: customPastShiftModel,
          customShiftFetchStatus: CustomShiftFetchStatus.loaded));
    } catch (e) {
      emit(
          state.copyWith(customShiftFetchStatus: CustomShiftFetchStatus.error));
    }
  }

  Future<void> getPastShift(
      {required String type,
      required int companyId,
      DateTime? customStartDate,
      DateTime? customEndDate}) async {
    try {
      emit(state.copyWith(status: ShiftsStateStatus.loading));
      PastShiftModel pastShiftModel = await shiftRepo.getPastShift(
          companyId: companyId,
          startDate: customStartDate?.toUtc().toIso8601String() ??
              getDateRange(type).startDate.toUtc().toIso8601String(),
          endDate: customEndDate?.toUtc().toIso8601String() ??
              getDateRange(type).endDate.toUtc().toIso8601String(),
          authToken: authToken);

      emit(state.copyWith(
          pastShiftModel: pastShiftModel, status: ShiftsStateStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: ShiftsStateStatus.error));
      throw Exception(e.toString());
    }
  }

  CustomYourActivityModel? getCustomYourActivityModel({
    required String type,
  }) {
    try {
      late int totalHour;
      late int totalMinute;
      late double average;

      List<CustomPastShiftModel> custompastshiftdata = [];
      if (type == "MONTHLY") {
        totalHour =
            (state.pastShiftModel.globalShiftTime?.hours ?? 0) * 60 * 60;
        totalMinute = (state.pastShiftModel.globalShiftTime?.minutes ?? 0) * 60;

        for (ShiftsByWeek weeklyData
            in state.pastShiftModel.shiftsByWeek ?? []) {
          custompastshiftdata.add(CustomPastShiftModel(
              hours: weeklyData.totalWeekTime?.hours ?? 0,
              minutes: weeklyData.totalWeekTime?.minutes ?? 0,
              title: weeklyData.weekStart
                      ?.formatDateRange(weeklyData.weekEnd ?? DateTime.now()) ??
                  "-",
              shiftCount: (weeklyData.shiftsByDay ?? []).length.toString()));
        }
      } else {
        totalHour =
            (state.pastShiftModel.shiftsByWeek?.first.totalWeekTime?.hours ??
                    0) *
                60 *
                60;
        totalMinute =
            (state.pastShiftModel.shiftsByWeek?.first.totalWeekTime?.minutes ??
                    0) *
                60;

        for (ShiftsByDay dailyData
            in (state.pastShiftModel.shiftsByWeek?.first.shiftsByDay ?? [])) {
          custompastshiftdata.add(CustomPastShiftModel(
              hours: dailyData.totalDayTime?.hours ?? 0,
              minutes: dailyData.totalDayTime?.minutes ?? 0,
              title: dailyData.dayStart?.dayOfWeekString ?? "-",
              shiftCount: (dailyData.shifts ?? []).length.toString()));
        }
      }
      average = (totalHour + totalMinute) / 7;
      //TODO: confirm this/.
      // (getDateRange(type).startDate)
      //     .getDaysUntil((getDateRange(type).endDate));

      return CustomYourActivityModel(
          totalHour: totalHour,
          totalMinute: totalMinute,
          average: average,
          customPastShiftModel: custompastshiftdata);
    } catch (e) {
      return null;
    }
  }
}

class CustomYourActivityModel {
  final int totalHour;
  final int totalMinute;
  final double average;

  final List<CustomPastShiftModel> customPastShiftModel;
  CustomYourActivityModel({
    required this.totalHour,
    required this.totalMinute,
    required this.average,
    required this.customPastShiftModel,
  });
}

class CustomPastShiftModel {
  final int hours;
  final int minutes;
  final String title;
  final String shiftCount;
  CustomPastShiftModel({
    required this.hours,
    required this.minutes,
    required this.title,
    required this.shiftCount,
  });

  CustomPastShiftModel copyWith({
    int? hours,
    int? minutes,
    String? title,
    String? shiftCount,
  }) {
    return CustomPastShiftModel(
      hours: hours ?? this.hours,
      minutes: minutes ?? this.minutes,
      title: title ?? this.title,
      shiftCount: shiftCount ?? this.shiftCount,
    );
  }
}

extension DateTimeExtension on DateTime {
  String toDayMonthWeekday() {
    final day = this.day;
    final daySuffix = _getDaySuffix(day);
    final month = DateFormat.MMM().format(this);
    final weekday = DateFormat.EEEE().format(this);
    return '$day$daySuffix $month, $weekday';
  }

  String _getDaySuffix(int day) {
    if (day >= 11 && day <= 13) {
      return 'th';
    }
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  String toShortMonthDay() {
    return DateFormat.MMMd().format(this);
  }

  String get dayOfWeekString {
    const List<String> weekdays = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ];
    return weekdays[weekday - 1];
  }

  int getDaysUntil(DateTime endDate) {
    return endDate.difference(this).inDays + 1;
  }

  String formatDateRange(DateTime endDate) {
    final monthNames = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];

    final startMonth = monthNames[month - 1];
    final startDay = day;

    final endMonth = monthNames[endDate.month - 1];
    final endDay = endDate.day;

    return '$startMonth $startDay - $endMonth $endDay';
  }
}
