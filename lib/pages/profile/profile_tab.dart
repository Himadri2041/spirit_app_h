import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: SvgPicture.asset(Assets.profiletitle, height: 24),
        centerTitle: true,
      ),
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(Assets.backgroundFrame, fit: BoxFit.cover),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    "Name",
                    style: AppStyles.m4.copyWith(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.blank,
                      border: Border.all(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 7,
                      horizontal: 20,
                    ),
                    child: Text(
                      "Gaurav Anand",
                      style: AppStyles.l1.setColor(Colors.white).setFontSize(18),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Email",
                    style: AppStyles.m4.copyWith(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.blank,
                      border: Border.all(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 7,
                      horizontal: 20,
                    ),
                    child: Text(
                      "Gaurav Anand",
                      style: AppStyles.l1.setColor(Colors.white).setFontSize(18),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Registered Events",
                    style: AppStyles.m4.copyWith(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.blank,
                      border: Border.all(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 7,
                      horizontal: 20,
                    ),
                    child: Text(
                      "Gaurav Anand",
                      style: AppStyles.l1.setColor(Colors.white).setFontSize(18),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: const BoxDecoration(
                      color: AppColors.secondaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(Assets.blackCart, height: 20),
                        const SizedBox(width: 8),
                        Text(
                          "Your Orders",
                          style: AppStyles.m4.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 64),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 4),
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            decoration: const BoxDecoration(
                              color: AppColors.primaryColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Assets.about, height: 20),
                                const SizedBox(width: 8),
                                Text(
                                  "About",
                                  style: AppStyles.m4.copyWith(
                                    fontStyle: FontStyle.italic,
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 4),
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            decoration: const BoxDecoration(
                              color: AppColors.secondaryColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Assets.team, height: 20),
                                const SizedBox(width: 8),
                                Text(
                                  "Team",
                                  style: AppStyles.m4.copyWith(
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: AppColors.blank,
                      border: Border.all(
                        color: AppColors.white,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Sign Out",
                        style: AppStyles.m4.copyWith(
                          fontStyle: FontStyle.italic,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
