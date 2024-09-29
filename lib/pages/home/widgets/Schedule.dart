import 'package:flutter/material.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/outline.dart';
import 'package:spirit_app/utils/widgets/schedule_card.dart';
import 'package:spirit_app/models/events/events_data.dart';

class ScheduleDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Container(

        color: Colors.black,
        child:Expanded(child:
        Container(
          margin: EdgeInsets.only(top:40,left:20,right:20,bottom:40),
          height: 762,
          clipBehavior: Clip.antiAlias,
          decoration: Outline.red_outline,
          child: Column(
          children: [
             Container(
             height: 47,
             decoration: BoxDecoration(color: Color(0xFFFE2A53)),
             padding: EdgeInsets.all(8.0),
             child:Center(child: Image.asset(Assets.scheduletitle)) ),

            SizedBox(
          height: 50,
          ),
            SizedBox(
               child: Image.asset(Assets.nov1),
               ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Expanded(
                flex: 1,
                child:
              Container(
                height:500,
                margin: EdgeInsets.only(left:10),
                child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
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
                padding: EdgeInsets.all(8.0),)
              ),)
            ),

                     ]
          ),
        ))
  );
           }}