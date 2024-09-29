import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/widgets/clip_path.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (context, _, index) {
        return CustomPaint(
          painter: BorderPainter(),
          child: ClipPath(
            clipper: ClipParallelogram(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Image.asset(
                Assets.defaultHomeBanner,
                width: MediaQuery.sizeOf(context).width,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        enlargeCenterPage: true,
        viewportFraction: 0.8,
        enlargeFactor: 0.2,
      ),
    );
  }
}
