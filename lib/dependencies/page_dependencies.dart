import 'package:flutter/material.dart';
import 'package:sdk/flutter_sdk.dart';

import '../router/router.dart';
import '../pages/pages.dart';

class PageDependencies {
  static Future setup(GetIt injector) async {
    injector.registerFactory<Widget>(() => HomePage(), instanceName: Routes.home);
  }
}
