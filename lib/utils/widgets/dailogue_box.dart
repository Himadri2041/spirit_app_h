import 'package:flutter/material.dart';
import 'package:spirit_app/models/events/events_model.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';

import 'clip_path.dart';
class EditDialogBox extends StatefulWidget {
  final EventModel event;
  const EditDialogBox({super.key, required this.event, });

  @override
  State<EditDialogBox> createState() => _EditDialogBoxState();
}


class _EditDialogBoxState extends State<EditDialogBox> {

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.blank,
          border: Border.all(
            color: AppColors.primaryColor,
            width: 3,
          ),
        ),
        height: mq.height * 0.5,
        width: mq.width * 0.9,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 7, bottom: 10),
                width: double.infinity,
                color: AppColors.primaryColor,
                child: Text(widget.event.eventName,
                  textAlign: TextAlign.center,
                  style: AppStyles.b2,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mq.width * 0.04, vertical: mq.height * 0.01,),
                child: CustomPaint(
                  painter: DashedBorderPainter(
                    color: AppColors.primaryColor,
                  ),
                  child: Container(
                    color: AppColors.backgroundColor,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.event.team1,
                        textAlign: TextAlign.center,
                        style: AppStyles.b2.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0),
                child: Text("vs",
                  textAlign: TextAlign.center,
                  style: AppStyles.b2,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mq.width * 0.04, vertical: mq.height * 0.01,
                ),
                child: CustomPaint(
                  painter: DashedBorderPainter(
                    color: AppColors.primaryColor,
                  ),
                  child: Container(
                    color: AppColors.backgroundColor,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.event.team2,
                        textAlign: TextAlign.center,
                        style: AppStyles.b2.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 13),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mq.width * 0.2, vertical: mq.height * 0.02,),
                child: CustomPaint(
                  painter: DashedBorderPainter(
                    color: AppColors.primaryColor,
                  ),
                  child: Container(
                    color: AppColors.backgroundColor,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.event.score,
                        textAlign: TextAlign.center,
                        style: AppStyles.b2.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mq.width * 0.15, vertical: mq.height * 0.02,),
                child: CustomPaint(
                  painter: DashedBorderPainter(
                    color: AppColors.primaryColor,
                  ),
                  child: Container(
                    color: AppColors.backgroundColor,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.event.venue,
                        textAlign: TextAlign.center,
                        style: AppStyles.b2.copyWith(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
