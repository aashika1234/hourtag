extension StrFormat on String {
  String get idFormat => isEmpty ? '' : split("-").first;

  String get firstCapital {
    List<String> values = split('');
    values[0] = values[0].toUpperCase();
    return values.join();
  }
}
