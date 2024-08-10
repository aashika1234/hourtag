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

  static String get getDiscordURL {
    if (currentEnvironment == Environment.dev) {
      return "https://discord.com/api/webhooks/1209069197573759006/HFoVniT0DbmEu2DJ3JXt7g1BXKd28ngPHVgZoPzAiRen8sSmOeXtKKYnlkg0mwQ1Rk-F";
    } else {
      return "https://discord.com/api/webhooks/1209519075005435944/5gbuZPRYPGrwgGTx8kVc262yByKhoTcz_VwHNEnTEQWkMNkwdz9WCfasXXH7yLi4W0x_";
    }
  }

  static String get imageBaseUrl {
    if (currentEnvironment == Environment.dev) {
      return "https://hourtag-dev.s3.us-east-1.amazonaws.com/";
    } else {
      return "https://hourtag-production.s3.ap-south-1.amazonaws.com/";
    }
  }
}
