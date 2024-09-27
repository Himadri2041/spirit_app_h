import 'package:flutter/material.dart';
import 'package:spirit_app/utils/widgets/clip_path.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomPaint(
        painter: BorderPainter(),
        child: ClipPath(
          clipper: ClipParallelogram(),
          child: Image.asset(
            "assets/images/WhatsApp Image 2023-11-19 at 00.50.47_bbc6a890.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
