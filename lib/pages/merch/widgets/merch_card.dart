import 'package:flutter/material.dart';
import 'package:spirit_app/pages/merch/widgets/march_options_carousel.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';
import 'package:spirit_app/utils/widgets/clip_path.dart';

class MerchCard extends StatefulWidget {
  const MerchCard({super.key});

  @override
  State<MerchCard> createState() => _MerchCardState();
}

class _MerchCardState extends State<MerchCard> {
  var ordering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.blank,
                  border: Border.all(color: AppColors.primaryColor),
                ),
                child: const MerchOptionsCarousel(),
              ),
              Transform.translate(
                offset: const Offset(-6, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipPath(
                      clipper: ClipRightAlign(),
                      child: Container(
                        padding: const EdgeInsets.all(4).copyWith(right: 12, left: 8),
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                        ),
                        child: Text(
                          'Logo Pink Blue Tee (White)',
                          style: AppStyles.m2.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ClipPath(
                      clipper: ClipRightAlign(),
                      child: Container(
                        padding: const EdgeInsets.all(2).copyWith(right: 12, left: 8),
                        decoration: const BoxDecoration(
                          color: AppColors.secondaryColor,
                        ),
                        child: const Text('₹499/-', style: AppStyles.m3),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                ordering = true;
              });
            },
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
      ),
    );
  }
}
