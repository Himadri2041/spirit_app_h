import 'package:flutter/material.dart';
import 'package:spirit_app/models/events/events_model.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spirit_app/pages/sports/widgets/sports_tab_widgets.dart';
import '../../models/events/events_data.dart';
import '../../utils/assets.dart';
import '../../utils/styles/styles.dart';
import '../../utils/widgets/schedule_card.dart';


class Sports extends StatefulWidget {
  const Sports({super.key});

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {


  late String event;
  late List<EventModel> eventList;

  @override
  void initState() {
    super.initState();

    event="Basket Ball";
    eventList=Events.specificEVent(event);
  }

  @override
  Widget build(BuildContext context) {


    List<GameModel> games = [
      GameModel(gameName: "Basket Ball", iconData: Icons.sports_basketball),
      GameModel(gameName: "Swimming", iconData: Icons.pool),
      GameModel(gameName: "Running", iconData: Icons.directions_run),
      GameModel(gameName: "Volley Ball", iconData: Icons.sports_volleyball),
      GameModel(gameName: "Cricket", iconData: Icons.sports_cricket),
      GameModel(gameName: "Martial Arts", iconData: Icons.sports_kabaddi),
      GameModel(gameName: "Foot Ball", iconData: Icons.sports_soccer),
      GameModel(gameName: "Tennis", iconData: Icons.sports_tennis),
      GameModel(gameName: "Hockey", iconData: Icons.sports_hockey),
      GameModel(gameName: "Baseball", iconData: Icons.sports_baseball),
      GameModel(gameName: "Table Tennis", iconData: Icons.sports_handball),
      GameModel(gameName: "Cycling", iconData: Icons.directions_bike),
      GameModel(gameName: "Boxing", iconData: Icons.sports_mma),
    ];

    final List<String> teams = [
      "IIT Guwahati",
      "IIT Kharagpur",
      "NIT Lomad",
      "ADBU",
      "Delhi University",
      "IGDTU"
    ];

    //TODO add logic to select sports on top ui
    //TODO add ongoing match ....

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: _appBar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(Assets.backgroundFrame, fit: BoxFit.cover),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  height: 80,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: games.length,
                    itemBuilder: (context, index) {
                      //final event = eventList[index];
                      return InkWell(
                        onTap: (){
                          setState(() {
                            event=games[index].gameName;
                            eventList=Events.specificEVent(event);

                          });
                        },
                        child: sportsPageWidgets().buildCircle(
                            Icon(games[index].iconData,size: 40,color: AppColors.white,)
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 18),
                      child:  Row(
                        children: [
                          Text(
                            event,
                            style: AppStyles.m4.copyWith(color: AppColors.secondaryColor,fontWeight: FontWeight.w400,fontSize: 18),
                          ),
                          SizedBox(width :3),
                          Icon(Icons.keyboard_arrow_down_rounded,color: AppColors.secondaryColor,)
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                        Assets.location,
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),

                Container(
                  margin: const EdgeInsets.only(left: 18),
                  child: const Text(
                    "Ongoing Matches",
                    style: AppStyles.b2,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.only(left: 18),
                  height: 120,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: eventList.length,
                    itemBuilder: (context, index) {
                      final event = eventList[index];
                      return ScheduleCard(eventModel: event);
                    },
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 18),
                      child:  const Text(
                        "Schedule",
                        style: AppStyles.b2,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                        Assets.location,
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.only(left: 18,right: 10),
                  //height: 120,
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: eventList.length,
                    itemBuilder: (context, index) {
                      final event = eventList[index];
                      return sportsPageWidgets.buildSchedule(event);
                    },
                  ),
                ),
                SizedBox(height: 65,),
                sportsPageWidgets().buildLeaderBoard(),
                SizedBox(height: 5,),
                Container(
                  child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: teams.length,
                      itemBuilder: (context,index){
                        return sportsPageWidgets().rowsBuilderBoard(teams[index], (index%2));
                      }),
                ),
                SizedBox(height: 60,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
AppBar _appBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: AppColors.backgroundColor,
    title: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SvgPicture.asset(Assets.spoertstitle, height: 24),
    ),
    centerTitle: true,
  );
}

