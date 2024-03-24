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
}
