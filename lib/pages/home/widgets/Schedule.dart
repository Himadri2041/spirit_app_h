import 'package:flutter/material.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/widgets/schedule_card.dart';
import 'package:spirit_app/models/events/events_data.dart';

class ScheduleDialog extends StatelessWidget {
  const ScheduleDialog({super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
        color: Colors.black,
        child:Expanded(child:
         Container(
           width: double.infinity,
          margin: const EdgeInsets.only(top:40,left:20,right:20,bottom:40),
          height: 762,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
                    color: AppColors.blank,
                    border: Border.all(color: AppColors.primaryColor),
                  ),

          child:
          SingleChildScrollView(child:Column(
            mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection:VerticalDirection.down,


          children: [

             Container(
             height: 47,
             decoration: const BoxDecoration(color: Color(0xFFFE2A53)),
             padding: const EdgeInsets.all(8.0),
             child:Center(child: Image.asset(Assets.scheduletitle)) ),

            const SizedBox(
          height: 50,
          ),
            SizedBox(
               child: Image.asset(Assets.nov1),
               ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Expanded(
                flex: 1,
                child:
              Container(
                height:500,
                margin: const EdgeInsets.only(left:10),
                child: GridView.builder(gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11),
                    itemBuilder:(context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ScheduleCard(eventModel: Events.allevents[index]),
                  );
                    },
                    itemCount:Events.allevents.length,
                padding: const EdgeInsets.all(8.0),)
              ),)
            ),

                     ]
          ),)
        ))
  );
           }}