import 'package:flutter/material.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/styles.dart';

class ProniteArtistCard extends StatelessWidget {
  const ProniteArtistCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width * 0.8,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(Assets.artistHighlightBg),
          ),
          Positioned(
            left: size.width * 0.24,
            top: 10,
            child: Text(
              "SAMAY\nRAINA",
              style: AppStyles.b1.copyWith(
                fontWeight: FontWeight.w900,
                height: 0.9,
              ),
            ),
          ),
          Positioned.fill(
            left: -24,
            bottom: 0,
            top: 64,
            child: Image.asset(
              Assets.defaultArtist,
            ),
          ),
        ],
      ),
    );
  }
}
