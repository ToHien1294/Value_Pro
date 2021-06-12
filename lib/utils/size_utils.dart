import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class SizeUtils {
  static double get ppi => (Platform.isAndroid || Platform.isIOS) ? 150 : 96;
  static double diagonal(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return sqrt((size.width * size.width) + (size.height * size.height));
  }
}
