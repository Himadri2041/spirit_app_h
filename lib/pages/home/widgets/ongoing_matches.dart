import 'package:flutter/material.dart';
import 'package:spirit_app/models/events/events_data.dart';
import 'package:spirit_app/utils/widgets/schedule_card.dart';

class OngoingMatches extends StatelessWidget {
  const OngoingMatches({super.key});

  @override
  Widget build(BuildContext context) {
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
}
