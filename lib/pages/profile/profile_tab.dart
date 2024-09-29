import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spirit_app/pages/profile/widgets/buttons.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(Assets.backgroundFrame, fit: BoxFit.cover),),
          Column(
            children: [
              SizedBox(height: 80,),
              Center(
                child: SvgPicture.asset(Assets.profiletitle),
              ),
              SizedBox(height:80,),
              SvgPicture.asset(Assets.nametitle),
              SizedBox(height: 13,),
              Container(
                width: 360,
                height: 40,
                decoration:BoxDecoration(
                    color: AppColors.blank,
                    border: Border.all(color: AppColors.primaryColor)
                ),
                padding: EdgeInsets.symmetric(vertical: 7,horizontal: 20),
                child: Text("Gaurav Anand",style: AppStyles.l1.setColor(Colors.white).setFontSize(18),),
              ),
              SizedBox(height: 19,),
              SvgPicture.asset(Assets.emailtitle),
              SizedBox(height: 13,),
              Container(
                width: 360,
                height: 40,
                decoration:BoxDecoration(
                    color: AppColors.blank,
                    border: Border.all(color: AppColors.primaryColor)
                ),
                padding: EdgeInsets.symmetric(vertical: 7,horizontal: 20),
                child: Text("spirit24@gmail.com",style: AppStyles.l1.setColor(Colors.white).setFontSize(18),),
              ),
              SizedBox(height: 19,),
              SvgPicture.asset(Assets.eventtitle),
              SizedBox(height: 13,),
              Container(
                width: 360,
                height: 165,
                decoration:BoxDecoration(
                    color: AppColors.blank,
                    border: Border.all(color: AppColors.primaryColor)
                ),
                padding: EdgeInsets.symmetric(vertical: 7,horizontal: 20),
                child: Text("Not Registered Yet",style: AppStyles.l1.setColor(Colors.white).setFontSize(18),),
              ),
              SizedBox(height: 20,),
              Buttons.Orders,
              SizedBox(height: 67,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Buttons.About,
                  SizedBox(width: 6.21,),
                  Buttons.Team
                ],
              ),
              SizedBox(height: 16,),
              Buttons.Signout
            ],
          )
        ],
      ),
    );
  }
}
