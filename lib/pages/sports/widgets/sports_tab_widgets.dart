import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spirit_app/models/events/events_model.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';

import '../../../models/events/events_data.dart';
import '../../../utils/widgets/schedule_card.dart';

class sportsPageWidgets {

  Widget buildCircle(Icon icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          shape: BoxShape.circle,  // Makes the container a circle
        ),
        child: icon,
      ),
    );
  }

  Widget buildMatches(){
    return Container(
      margin: const EdgeInsets.only(left: 18),
      height: 120,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: Events.allevents.length,
        itemBuilder: (context, index) {
          final event = Events.allevents[index];
          return ScheduleCard(eventModel: event);
        },
      ),
    );
  }

  static Widget buildSchedule(EventModel event) {
    return Container(
       height: 60,
      decoration: BoxDecoration(
        color: AppColors.blank,
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${event.team1} vs ${event.team2} (${event.caterogy.substring(0, 1)})",
              style:AppStyles.m4.copyWith(color:AppColors.white),
            ),
            event.score.isEmpty
                ?Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    event.venue,
                    style: const TextStyle(
                    color: AppColors.white,
                    ),
                  ),
                )
                :Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    event.score,
                    style: const TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }

  Widget buildLeaderBoard(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      color: AppColors.backgroundColor, // Main background color
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              //borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "LEADERBOARD",
                  style: AppStyles.b2.copyWith(fontSize: 18),
                ),
                const Row(
                  children: [
                    Text(
                      "Men's",
                      style: TextStyle(
                        color: Colors.yellow, // Dropdown text color
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width:3),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.yellow, // Dropdown arrow color
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget rowsBuilderBoard(String college_name, int odd_even){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      color: AppColors.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 35,
            padding: const EdgeInsets.all(8),
            decoration:  BoxDecoration(
              color: odd_even==1?AppColors.color3:AppColors.color5,
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  college_name,
                  style: AppStyles.b2.copyWith(fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 1,)
        ],
      ),
    );
  }

}

class GameModel {
  final String gameName;
  final IconData iconData;

  GameModel({required this.gameName, required this.iconData});
}
