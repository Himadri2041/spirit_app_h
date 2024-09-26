import 'package:flutter/cupertino.dart';
import 'package:spirit_app/utils/styles/colors.dart';
class Outline{
  static const red_outline = ShapeDecoration(
      color: AppColors.Black,
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 1,color: AppColors.Accent)
      ));
}