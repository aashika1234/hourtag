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
