import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spirit_app/pages/home/widgets/help_desk.dart';
import 'package:spirit_app/pages/home/widgets/ongoing_matches.dart';
import 'package:spirit_app/pages/home/widgets/home_carousel.dart';
import 'package:spirit_app/pages/home/widgets/home_pronite_list.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: _appBar(context),
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
                const HomeCarousel(),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 18),
                      child: const Text(
                        "Ongoing Matches",
                        style: AppStyles.b2,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                        Assets.schedule,
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const OngoingMatches(),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "Reminder",
                    style: AppStyles.b2,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.all(12),
                  height: 100,
                  margin: const EdgeInsets.only(left: 18, right: 18),
                  decoration: BoxDecoration(
                    color: AppColors.blank,
                    border: Border.all(color: AppColors.primaryColor),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ayo this is to inform you that there’ll be no basketball matches since...',
                        style: AppStyles.l1,
                      ),
                      Text(
                        'No badminton today and no carrom and no basketball please.',
                        style: AppStyles.l1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.only(left: 18),
                  child: const Text("Pronites", style: AppStyles.b2),
                ),
                const SizedBox(height: 20),
                const HomeProniteList(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.backgroundColor,
      title: SvgPicture.asset(Assets.appTitle, height: 24),
      centerTitle: false,
      actions: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: true,
              useSafeArea: true,
              builder: (context) {
                return const HelpDialog();
              },
            );
          },
          child: SvgPicture.asset(Assets.helpDesk, height: 24, width: 24),
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
