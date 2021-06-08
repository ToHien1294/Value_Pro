import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle {
  TextStyle get thin => weight(FontWeight.w100);

  TextStyle get extraLight => weight(FontWeight.w200);

  TextStyle get light => weight(FontWeight.w300);

  TextStyle get regular => weight(FontWeight.w400);

  TextStyle get medium => weight(FontWeight.w500);

  TextStyle get semiBold => weight(FontWeight.w600);

  TextStyle get bold => weight(FontWeight.w700);

  TextStyle get italic => fontStyle(FontStyle.italic);

  TextStyle get normal => fontStyle(FontStyle.normal);

  TextStyle size(double size) => copyWith(fontSize: size);

  TextStyle textColor(Color v) => copyWith(color: v);

  TextStyle weight(FontWeight v) => copyWith(fontWeight: v);

  TextStyle fontStyle(FontStyle v) => copyWith(fontStyle: v);

  TextStyle setDecoration(TextDecoration v) => copyWith(decoration: v);

  TextStyle fontFamilies(String v) => copyWith(fontFamily: v);
}
