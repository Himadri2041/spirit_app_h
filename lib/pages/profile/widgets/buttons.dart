import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spirit_app/utils/assets.dart';

import '../../../utils/styles/colors.dart';
import '../../../utils/styles/styles.dart';
class Buttons{
  static var Signout= OutlinedButton(onPressed: (){},
  style: OutlinedButton.styleFrom(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
  side: BorderSide(width: 2,color: Colors.white),
  ),
  child: Container(
  height: 40,
  width: 215,
  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
  child: Center(child: Text("Sign Out",style: AppStyles.b2.setFontSize(16).copyWith(fontStyle :FontStyle.italic)),
  )));
  static var Team =GestureDetector(
      onTap: (){},
      child: Container(
        width: 129,
        height: 40,
        decoration: BoxDecoration(
            color: AppColors.secondaryColor
        ),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.team),
            SizedBox(width: 10,),
            Text("Team",style: AppStyles.b2.setColor(Colors.black).setFontSize(16).copyWith(fontStyle :FontStyle.italic))
          ],
        ),
      ));
      static var About = GestureDetector(
        onTap: (){},
        child: Container(
        width: 129,
        height: 40,
        decoration: BoxDecoration(
            color: AppColors.primaryColor
        ),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.about),
            SizedBox(width: 10,),
            Text("About",style: AppStyles.b2.setFontSize(16).copyWith(fontStyle :FontStyle.italic))
          ],
        ),
      ));
      static var  Orders = GestureDetector(
          onTap: (){},
          child: Container(
            width: 266,
            height: 40,
            decoration: BoxDecoration(
                color: AppColors.secondaryColor
            ),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.black_cart),
                SizedBox(width: 10,),
                Text("Your Orders",style: AppStyles.b2.setColor(Colors.black).setFontSize(16).copyWith(fontStyle :FontStyle.italic))
              ],
            ),
          ));
}