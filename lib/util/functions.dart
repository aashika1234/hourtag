import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hourtag/util/color_constant.dart';
import 'package:time_picker_sheet_fork/widget/sheet.dart';
import 'package:time_picker_sheet_fork/widget/time_picker.dart';

enum SnacksBarStatus { error, success, normal }

class Func {
  static String extractMonth(int month) {
    switch (month) {
      case 1:
        return "Jan";

      case 2:
        return "Feb";

      case 3:
        return "Mar";

      case 4:
        return "Apr";

      case 5:
        return "May";

      case 6:
        return "Jun";

      case 7:
        return "Jul";

      case 8:
        return "Aug";

      case 9:
        return "Sep";

      case 10:
        return "Oct";

      case 11:
        return "Nov";

      case 12:
        return "Dec";

      default:
        return "Invalid month";
    }
  }

  static int formatColor(String shortHexColor) {
    if (shortHexColor.length == 4) {
      String r = shortHexColor[1];
      String g = shortHexColor[2];
      String b = shortHexColor[3];
      shortHexColor = "#$r$r$g$g$b$b";
    }
    return int.parse(shortHexColor.substring(1), radix: 16) + 0xFF000000;
  }

  static Future<DateTime> datePicker(
      {required BuildContext context,
      DateTime? initialDate,
      DateTime? endDate}) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: initialDate ?? DateTime.now(),
        firstDate: initialDate ?? DateTime(2010),
        //DateTime.now() - not to allow to choose before today.
        lastDate: endDate ?? DateTime.now());

    if (pickedDate != null) {
      return pickedDate;
    } else {
      throw 'Date not selected';
    }
  }

  static showSnacksBar(
      {required String message,
      required BuildContext context,
      SnacksBarStatus status = SnacksBarStatus.normal}) {
    final snackBar = SnackBar(
      backgroundColor: status == SnacksBarStatus.normal
          ? ColorConstant.cPurple
          : status == SnacksBarStatus.error
              ? ColorConstant.red
              : ColorConstant.cPurple,
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white),
      ),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(
      snackBar,
    );
  }

  static Future<TimeOfDay> pickTime(
      {required BuildContext context, int? maxHour, int? minHour}) async {
    DateTime? time = await TimePicker.show<DateTime?>(
      context: context,
      sheet: TimePickerSheet(
        sheetTitle: 'Select Time',
        hourTitle: 'Hour',
        minuteTitle: 'Minute',
        maxHour: maxHour ?? 24,
        minHour: minHour ?? 0,
        initialDateTime: DateTime.now(),
        sheetCloseIconColor: ColorConstant.cPurple,
        hourTitleStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: ColorConstant.cPurple),
        minuteTitleStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: ColorConstant.cPurple),
        wheelNumberItemStyle:
            const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        wheelNumberSelectedStyle: TextStyle(
            fontSize: 18,
            color: ColorConstant.cPurple,
            fontWeight: FontWeight.w500),
        saveButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(ColorConstant.primaryColor),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        saveButtonWidget: Container(
          height: 50,
          decoration: BoxDecoration(
              color: ColorConstant.primaryColor,
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text('Save',
                style: TextStyle(
                    color: ColorConstant.borderFillCOlor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );

    if (time != null) {
      return TimeOfDay(hour: time.hour, minute: time.minute);
    } else {
      throw 'Time not selected';
    }
  }
}
