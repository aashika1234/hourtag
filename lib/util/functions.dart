import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  static Future<DateTime> datePicker({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2010),
        //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime.now());

    if (pickedDate != null) {
      print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(
          formattedDate); //formatted date output using intl package =>  2021-03-16
      return pickedDate;
    } else {
      throw 'Date not selected';
    }
  }

  static Future<TimeOfDay> pickTime({required BuildContext context}) async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (time != null) {
      return time;
    } else {
      throw 'Time not selected';
    }
  }
}
