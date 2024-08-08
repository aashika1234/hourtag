import 'package:intl/intl.dart';

String formatUtcToLocalTime(DateTime? startTimeUtc, DateTime? endTimeUtc) {
  if (startTimeUtc == null || endTimeUtc == null) {
    return '';
  }
  // Convert UTC times to local times
  DateTime startLocal = startTimeUtc.toLocal();
  DateTime endLocal = endTimeUtc.toLocal();

  // Format the local times
  DateFormat timeFormat = DateFormat('HH:mm');
  String formattedStart = timeFormat.format(startLocal);
  String formattedEnd = timeFormat.format(endLocal);

  // Return the formatted string
  return '$formattedStart - $formattedEnd';
}

String calculateTimeDifference(DateTime start, DateTime end) {
  // Calculate the difference in duration between the end and start times
  Duration difference = end.difference(start);

  // Extract hours and minutes from the duration
  int hours = difference.inHours;
  int minutes = difference.inMinutes % 60;

  // Ensure hours are at least two digits
  String formattedHours = hours < 10 ? '0$hours' : '$hours';
  // Ensure minutes are two digits
  String formattedMinutes = minutes < 10 ? '0$minutes' : '$minutes';

  // Format the result as "HH:MM"
  String formattedDifference = '$formattedHours:$formattedMinutes';

  return formattedDifference;
}

int calculateTimeDifferenceinSeconds(DateTime start, DateTime end) {
  // Calculate the difference in duration between the end and start times
  Duration difference = end.difference(start);

  return difference.inSeconds;
}
