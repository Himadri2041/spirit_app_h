import 'package:flutter/cupertino.dart';
import 'package:spirit_app/models/events/events_model.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/outline.dart';
import 'package:spirit_app/utils/styles/styles.dart';

class ScheduleCard extends StatefulWidget {
  final EventModel eventModel;
  const ScheduleCard({super.key, required this.eventModel});

  @override
  State<ScheduleCard> createState() => _ScheduleCardState();
}

class _ScheduleCardState extends State<ScheduleCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        width: 128,
        height: 120,
        clipBehavior: Clip.antiAlias,
        decoration: Outline.red_outline,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              height: 17.35,
              width: 128,
              decoration: const BoxDecoration(color: AppColors.primaryColor),
              padding: const EdgeInsets.symmetric(horizontal: 5.58, vertical: .1),
              child: Text(
                widget.eventModel.eventName,
                textAlign: TextAlign.start,
                style: AppStyles.b4,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.eventModel.team1,
                    style: AppStyles.b3,
                  ),
                  const Text(
                    "VS",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 8, color: AppColors.white),
                  ),
                  Text(widget.eventModel.team2, style: AppStyles.b3)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 1.5),
              child: Center(child: Text(widget.eventModel.score, style: AppStyles.b1)),
            ),
            const SizedBox(
              height: 1.5,
            ),
            Container(
                margin: const EdgeInsets.only(left: 14.5),
                child: Text(widget.eventModel.venue, style: AppStyles.s1)),
          ],
        ));
  }
}
