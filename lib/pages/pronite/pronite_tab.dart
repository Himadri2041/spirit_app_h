import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spirit_app/pages/pronite/widgets/pronite_artist_card.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';
import 'package:spirit_app/utils/widgets/clip_path.dart';

class Pronites extends StatefulWidget {
  const Pronites({super.key});

  @override
  State<Pronites> createState() => _PronitesState();
}

class _PronitesState extends State<Pronites> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: _appBar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(Assets.backgroundFrame),
          ),
          SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Text(
                    "Get ready for an unforgettable evening of laughter and fun as we welcome the incredibly talented comedian,",
                    style: AppStyles.b3,
                  ),
                ),
                const SizedBox(height: 32),
                CarouselSlider(
                  items: List.generate(
                    5,
                    (index) {
                      return const ProniteArtistCard();
                    },
                  ),
                  options: CarouselOptions(
                    height: size.height * 0.5,
                    enableInfiniteScroll: true,
                    enlargeFactor: 0.3,
                    viewportFraction: 0.8,
                    enlargeCenterPage: true,
                    onPageChanged: (value, _) {
                      setState(() => _currentIndex = value);
                    },
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
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
                  const SizedBox(height: 8),
                  const Text("2nd March", style: AppStyles.b3),
                  Text(
                    "8 PM",
                    style: AppStyles.b2.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on_rounded, color: AppColors.white),
                      const SizedBox(width: 8),
                      Text(
                        "Dr Bhupen Hazarika Auditorium",
                        style: AppStyles.b3.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(height: kBottomNavigationBarHeight / 2),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      title: SvgPicture.asset(
        Assets.humorNight,
        height: 24,
      ),
      automaticallyImplyLeading: false,
      centerTitle: true,
      elevation: 0,
    );
  }
}
