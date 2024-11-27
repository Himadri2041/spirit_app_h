import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spirit_app/pages/teams/widgets/name_card.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';

class teamScreen extends StatelessWidget {
  const teamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SvgPicture.asset(Assets.teamTitle, height: 30),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Background image positioned to fill the entire screen
          Positioned.fill(
            child: Image.asset(
              Assets.backgroundFrame,
              fit: BoxFit.cover,
            ),
          ),
          // Scrollable content placed on top of the background
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 3),
                  Center(
                    child: Text(
                      "Meet our incredible team!",
                      style: AppStyles.l1.copyWith(fontSize: 15),
                    ),
                  ),
                  const SizedBox(height: 72), // Adds 72px of space
                  // NameCards, repeated multiple times
                  const NameCard(name: 'Venkatesh', position: 'Head',),
                  const NameCard(name: 'Ganesh', position: 'Executive',),
                  const NameCard(name: 'Akshay', position: 'Executive',),
                  const NameCard(name: 'Gaurav Anand',position: 'Executive',),
                  const NameCard(name: 'Himadri ', position: 'Executive',),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
