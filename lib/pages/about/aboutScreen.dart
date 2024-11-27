import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';

class aboutScreen extends StatelessWidget {
  const aboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: SvgPicture.asset(Assets.aboutTitle, height: 24),
        centerTitle: true,
      ),
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(Assets.backgroundFrame, fit: BoxFit.cover),
            ),

            Column(
              children: [
                const SizedBox(height: 52,),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Text(
                      "Get ready for an unforgettable evening of laughter and fun as we welcome the incredibly talented comedian, Samay Raina, to IIT Guwahati! Known for his sharp wit and hilarious observations, Samay is all set to take the stage and leave you in splits.",
                      style: AppStyles.l1.copyWith(fontSize: 17)

                  ),
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}
