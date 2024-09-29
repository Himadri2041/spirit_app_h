import 'package:flutter/material.dart';
import 'package:spirit_app/models/ProNite/pronite_model.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';

class HomeProniteCard extends StatelessWidget {
  final ProniteModel proniteModel;
  const HomeProniteCard({super.key, required this.proniteModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18),
      height: 200,
      width: 148,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.blank,
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: Column(
        children: [
          Container(
            height: 132,
          ),
          Container(
            width: 148,
            height: 66,
            clipBehavior: Clip.antiAlias,
            decoration: const ShapeDecoration(
              color: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFFE2A53)),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(proniteModel.date, style: AppStyles.s2),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(proniteModel.time, style: AppStyles.l1),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(proniteModel.artist, style: AppStyles.b2),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(proniteModel.venue, style: AppStyles.l1),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
