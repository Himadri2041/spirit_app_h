import 'package:flutter/material.dart';
import 'package:spirit_app/utils/styles/colors.dart';

class AppStyles {
  /// Bold
  /// size 28
  static const b1 = TextStyle(fontWeight: FontWeight.w500, fontSize: 28, color: AppColors.white);

  /// size 20
  static const b2 = TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontFamily: 'Sequel Sans',
      height: 0,
      fontWeight: FontWeight.w500);

  /// size 13
  static const b3 = TextStyle(fontWeight: FontWeight.w500, fontSize: 13, color: AppColors.white);

  /// size 11
  static const b4 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 11,
    color: AppColors.white,
  );

  /// SemiBold
  /// size 9
  static const s1 = TextStyle(fontWeight: FontWeight.w400, fontSize: 9, color: AppColors.white);

  /// size 12
  static const s2 = TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.white);

  /// Light
  /// size 12
  static const l1 = TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontFamily: 'Sequel Sans',
      height: 0,
      fontWeight: FontWeight.w300);
}

extension AppStylesExtension on TextStyle {
  TextStyle setColor(Color color) => copyWith(color: color);
  TextStyle setFontSize(double size) => copyWith(fontSize: size);
  TextStyle setFontWeight(FontWeight weight) => copyWith(fontWeight: weight);
  TextStyle setFontFamily(String family) => copyWith(fontFamily: family);
}
