import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spirit_app/pages/merch/widgets/cart_item_card.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';
import 'package:spirit_app/utils/widgets/clip_path.dart';

class YourCartScreen extends StatelessWidget {
  const YourCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: SvgPicture.asset(Assets.yourCartTitle, height: 24),
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(Assets.backgroundFrame, fit: BoxFit.cover),
            ),
            SizedBox(
              height: size.height,
              child: ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (index == 5) return const SizedBox(height: kBottomNavigationBarHeight * 2);
                  return const CartItemCard();
                },
              ),
            ),
            _placeOrderButton(),
          ],
        ),
      ),
    );
  }

  Positioned _placeOrderButton() {
    return Positioned(
      bottom: 64,
      left: 0,
      right: 0,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 5, left: 21),
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(color: AppColors.secondaryColor),
            child: Center(
              child: Text(
                "Place Order",
                style: AppStyles.b2.copyWith(
                  fontStyle: FontStyle.italic,
                  color: AppColors.backgroundColor,
                ),
              ),
            ),
          ),
          Positioned(
            left: 14,
            top: 0,
            child: ClipPath(
              clipper: ClipRightAlign(),
              child: Container(
                padding: const EdgeInsets.all(2).copyWith(right: 12),
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                ),
                child: RichText(
                  text: TextSpan(
                    style: AppStyles.b4,
                    children: [
                      const TextSpan(text: "Total\n"),
                      TextSpan(
                          text: "₹499\n",
                          style: AppStyles.m4
                              .setColor(AppColors.white)
                              .setFontWeight(FontWeight.w700)),
                      const TextSpan(text: "2 item(s)")
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
