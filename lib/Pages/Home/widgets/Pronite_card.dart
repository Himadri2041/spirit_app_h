import 'package:flutter/material.dart';
import 'package:spirit_app/models/ProNite/Pronite_model.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';
import '../../../utils/styles/outline.dart';

class ProniteCard extends StatefulWidget {
  final ProniteModel proniteModel;
  const ProniteCard({super.key, required this.proniteModel});

  @override
  State<ProniteCard> createState() => _ProniteCardState();
}

class _ProniteCardState extends State<ProniteCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18),
      height: 200,
      width: 148,
      clipBehavior: Clip.antiAlias,
      decoration: Outline.red_outline,
      child: Column(
        children: [
          Container(height: 132,),
          Container(
            width: 148,
            height: 66,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: AppColors.Accent,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFFE2A53)),
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          widget.proniteModel.date,
                          style: AppStyles.s2
                      ),
                      SizedBox(width: 6,),
                      Text(
                          widget.proniteModel.time,
                          style: AppStyles.l1
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Text(
                      widget.proniteModel.artist,
                      style: AppStyles.b2
                  ),
                  SizedBox(height: 3,),
                  Text(
                      widget.proniteModel.venue,
                      style: AppStyles.l1
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
