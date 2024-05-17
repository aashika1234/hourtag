enum Environment {
  live,
  dev,
}

class ApiContants {
  static const String _devURL = "https://dev-api.app.hourtag.com";
  static const String _liveURL = "https://api.hourtag.com";

  static Environment currentEnvironment = Environment.live;

  static String get baseUrl {
    if (currentEnvironment == Environment.dev) {
      return _devURL;
    } else {
      return _liveURL;
    }
  }

  static bool get isLiveENV {
    if (currentEnvironment == Environment.dev) {
      return false;
    } else {
      return true;
    }
  }
}
