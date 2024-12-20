import 'package:flutter/material.dart';
import 'package:spirit_app/models/informals/informal_model.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';
import 'package:spirit_app/utils/widgets/clip_path.dart';

class InformalCard extends StatelessWidget {
  final informalModel informalmodel;
  const InformalCard({super.key, required this.informalmodel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 8, left: 2, top: 2),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: AppColors.blank,
                border: Border.all(color: AppColors.primaryColor),
              ),
              child: Image.asset(
                Assets.informal,
                fit: BoxFit.cover,
              ),
            ),
            ClipPath(
              clipper: ClipRightAlign(),
              child: Container(
                padding: const EdgeInsets.all(2).copyWith(right: 20, left: 8),
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                ),
                child: Column(
                  children: [
                    Text(
                      informalmodel.date,
                      style: AppStyles.m2.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(informalmodel.time, style: AppStyles.l1),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(right: 8, left: 2),
          width: 150,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(color: AppColors.primaryColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                informalmodel.name,
                style: AppStyles.m2.copyWith(fontStyle: FontStyle.italic, fontSize: 16),
              ),
              Text(informalmodel.venue, style: AppStyles.l1),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
