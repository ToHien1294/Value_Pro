class AppConstants {
  static const int pageSize = 10;
  static const int indexFirstPage = 0;
  static const String nullString = '--';
  static const String emptyString = '';
  static const String requiredString = '*';
  static const String spaceString = ' ';
  static const String dashString = ' - ';
}

class ImageConstants {
  ImageConstants._();

  static const String appLogo = 'assets/images/png/app_logo.jpg';
}

class SVGConstants {
  SVGConstants._();

  static const String appLogo = 'assets/images/svg/app_logo.svg';
}

class FlagConstants {
  static const String base = 'assets/flags/';
  static String path(String code) => '$base$code.svg';
}

class EnvironmentConstant {
  static const String dev = 'Develop';
  static const String staging = 'Staging';
  static const String test = 'Test';
  static const String prod = 'Production';
  static const String beta = 'Beta';
}

class SharedPreferencesKey {
  static const String language = 'language';
  static const String theme = 'theme';
  static const String userInfo = 'userInfo';
  static const String owner = 'owner';
  static const String refreshExpiresIn = 'refresh_expires_in';
  static const String env = 'env';
  static const String firstRun = 'first_run';
}
