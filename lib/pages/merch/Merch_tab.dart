import 'package:flutter/material.dart';
import 'package:spirit_app/pages/merch/widgets/merch_card.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spirit_app/utils/widgets/clip_path.dart';

class Merch extends StatefulWidget {
  const Merch({super.key});

  @override
  State<Merch> createState() => _MerchState();
}

class _MerchState extends State<Merch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundColor,
        title: SvgPicture.asset(Assets.merchtitle, height: 20.85),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(Assets.backgroundFrame, fit: BoxFit.cover),
          ),
          const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Grab your official SPIRIT 24 merch now! Pre orders open!',
                      style: AppStyles.l1,
                    ),
                  ),
                ),
                SizedBox(height: 64),
                MerchCard(),
                MerchCard(),
                MerchCard(),
              ],
            ),
          ),
          _cartButton(),
        ],
      ),
    );
  }

  Widget _cartButton() {
    return Positioned(
      right: 0,
      top: 64,
      child: ClipPath(
        clipper: ClipLeftAlign(),
        child: Container(
          padding: const EdgeInsets.all(4).copyWith(right: 12, left: 8),
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
          ),
          child: SvgPicture.asset(Assets.cart, height: 24),
        ),
      ),
    );
  }
}
