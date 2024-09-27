import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spirit_app/Pages/Home/widgets/Builder.dart';
import 'package:spirit_app/Pages/Home/widgets/ClipPath_parallelogram.dart';
import 'package:spirit_app/Pages/Home/widgets/Pronite_card.dart';
import 'package:spirit_app/Pages/Home/widgets/pronite_builder.dart';
import 'package:spirit_app/Pages/Merch/Merch.dart';
import 'package:spirit_app/Pages/Profile/Profile.dart';
import 'package:spirit_app/Pages/Pronites/Pronites.dart';
import 'package:spirit_app/Pages/Sports/Sports.dart';
import 'package:spirit_app/utils/styles/outline.dart';
import 'package:spirit_app/utils/widgets/schedule_card.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Color1,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 75,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 18),
                      child: Text("SPIRIT24",style:AppStyles.H1,)),
                  Container(
                      margin:EdgeInsets.only(right: 18),
                      child: SvgPicture.asset("assets/icons/helpdesk.svg",height: 24,width: 24,)),
                ]
              ),
              SizedBox(height: 40,),
              Container(
                child: Center( child:  Parallelogram(),)
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin:EdgeInsets.only(left: 18),
                      child: Text("Ongoing Matches",style:AppStyles.b2,)),
                  Container(
                      margin:EdgeInsets.only(right: 18),
                      child: SvgPicture.asset("assets/icons/schedule.svg",height: 24,width: 24,)),
                ],
              ),
              SizedBox(height: 15,),
              Allevents(),
              SizedBox(height: 25,),
              Container(
                  margin:EdgeInsets.only(left: 18),
                  child: Text("Reminder",style:AppStyles.b2,)),
              SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.all(12),
                height: 100,
                margin:EdgeInsets.only(left: 18,right: 18),
                decoration: Outline.red_outline,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ayo this is to inform you that there’ll be no basketball matches since...',
                      style: AppStyles.l1
                    ),
                    Text(
                        'No badminton today and no carrom and no basketball please.',
                        style: AppStyles.l1
                    ),

                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Text("Pronites",style: AppStyles.b2,)),
              SizedBox(height: 10,),
              ProniteBuilder(),
              SizedBox(height: 40,),



            ],
          ),
        ),
      ),

    );
  }
}
