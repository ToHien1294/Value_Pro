import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'dependencies/app_dependencies.dart';

// ignore: avoid_void_async
void main() async {
//  LicenseRegistry.addLicense(() async* {
//    final license = await rootBundle.loadString('assets/licenses/OFL_SFPro.txt');
//    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
//  });
  WidgetsFlutterBinding.ensureInitialized();
  await AppDependencies.init();
  await SharedPreferences.getInstance();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  /// Firebase notification

  runApp(const MyApp());
}
