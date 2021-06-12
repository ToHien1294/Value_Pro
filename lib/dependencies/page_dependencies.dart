import 'package:flutter/material.dart';
import 'package:sdk/flutter_sdk.dart';

import '../pages/pages.dart';
import '../router/router.dart';

class PageDependencies {
  static Future setup(GetIt injector) async {
    injector.registerFactory<Widget>(() => HomePage(),
        instanceName: Routes.home);
  }
}
