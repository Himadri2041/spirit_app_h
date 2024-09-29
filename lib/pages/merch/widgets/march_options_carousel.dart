import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/widgets/clip_path.dart';

class MerchOptionsCarousel extends StatefulWidget {
  const MerchOptionsCarousel({
    super.key,
  });

  @override
  State<MerchOptionsCarousel> createState() => _MerchOptionsCarouselState();
}

class _MerchOptionsCarouselState extends State<MerchOptionsCarousel> {
  late final CarouselController _controller;
  var _currentIndex = 0;

  @override
  void initState() {
    _controller = CarouselController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: List.generate(
            2,
            (index) {
              return Padding(
                padding: const EdgeInsets.all(16).copyWith(top: 44),
                child: Image.asset(
                  Assets.merchwhite,
                  height: 400,
                  width: double.infinity,
                ),
              );
            },
          ),
          options: CarouselOptions(
            height: 360,
            enableInfiniteScroll: true,
            enlargeFactor: 0.3,
            viewportFraction: 0.9,
            enlargeCenterPage: true,
            onPageChanged: (value, _) {
              setState(() => _currentIndex = value);
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(2, (index) {
            final selected = _currentIndex == index;
            return Padding(
              padding: const EdgeInsets.all(1),
              child: ClipPath(
                clipper: ClipParallelogram(percent: 0.2),
                child: Container(
                  height: selected ? 6 : 5,
                  width: selected ? 6 : 5,
                  decoration: BoxDecoration(
                    color: selected ? AppColors.white : Colors.grey,
                  ),
                ),
              ),
            );
          }),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
