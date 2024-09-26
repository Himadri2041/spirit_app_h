import 'package:flutter/cupertino.dart';
import 'package:spirit_app/models/events/events_data.dart';
import 'package:spirit_app/utils/widgets/schedule_card.dart';

class Allevents extends StatefulWidget {
  const Allevents({super.key});

  @override
  State<Allevents> createState() => _AlleventsState();
}

class _AlleventsState extends State<Allevents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(left: 18),
      height: 120,
      child: ListView.builder(
        shrinkWrap: true,
         scrollDirection: Axis.horizontal,
         physics: BouncingScrollPhysics(),
         itemCount: Events.allevents.length,
          itemBuilder: (context,index){
            final Event = Events.allevents[index];
            return ScheduleCard(eventModel: Event);
          }

      ),
    );
  }
}
