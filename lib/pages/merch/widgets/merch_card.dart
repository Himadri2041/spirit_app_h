import 'package:flutter/material.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/outline.dart';
import 'package:spirit_app/utils/styles/styles.dart';
import 'package:spirit_app/utils/widgets/clip_path.dart';

class MerchCard extends StatelessWidget {
  const MerchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 44),
          child: Stack(
            children: [
              Container(
                decoration: Outline.red_outline,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      Assets.merchwhite,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(Assets.merchlogo),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipPath(
                    clipper: ClipRightAlign(percent: 0.05),
                    child: Container(
                      padding: const EdgeInsets.all(4).copyWith(right: 12, left: 8),
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                      ),
                      child: const Text(
                        'Logo Pink Blue Tee (White)',
                        style: AppStyles.m2,
                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: ClipRightAlign(percent: 0.05),
                    child: Container(
                      padding: const EdgeInsets.all(4).copyWith(right: 12, left: 8),
                      decoration: const BoxDecoration(
                        color: AppColors.secondaryColor,
                      ),
                      child: const Text('₹499/-', style: AppStyles.m3),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 44),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(color: AppColors.secondaryColor),
            child: Center(
              child: Text(
                "PRE-ORDER",
                style: AppStyles.b3.copyWith(
                  color: AppColors.backgroundColor,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
