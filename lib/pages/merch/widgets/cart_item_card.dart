import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spirit_app/utils/assets.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/styles/styles.dart';
import 'package:spirit_app/utils/widgets/clip_path.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({
    super.key,
  });

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  final _controller = CarouselSliderController();
  var _currentIndex = 0;
  var _num = 1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: size.width * 0.45,
              decoration: BoxDecoration(
                color: AppColors.color4,
                border: Border.all(color: AppColors.primaryColor),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(Assets.merchBg),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        CarouselSlider(
                          carouselController: _controller,
                          items: List.generate(
                            2,
                            (index) {
                              return Padding(
                                padding: const EdgeInsets.all(16).copyWith(top: 44),
                                child: Image.asset(
                                  Assets.merchwhite,
                                ),
                              );
                            },
                          ),
                          options: CarouselOptions(
                            height: 200,
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 242,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                border: Border.all(color: AppColors.primaryColor),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Opacity(
                      opacity: 0.5,
                      child: Image.asset(
                        Assets.backgroundFrame,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Price", style: AppStyles.l1.setFontSize(11)),
                          const SizedBox(height: 4),
                          Text(
                            "₹499/-",
                            style: AppStyles.b1.copyWith(
                              color: AppColors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Column(
                        children: [
                          Text("Size", style: AppStyles.l1.setFontSize(11)),
                          const SizedBox(height: 4),
                          Text(
                            "M",
                            style: AppStyles.b1.copyWith(
                              color: AppColors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Column(
                        children: [
                          Text("Quantity", style: AppStyles.l1.setFontSize(11)),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _num--;
                                  });
                                },
                                icon: const Icon(
                                  Icons.remove_rounded,
                                  color: AppColors.white,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 6,
                                  horizontal: 16,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.white, width: 1.5),
                                ),
                                child: Text(
                                  "$_num",
                                  style: AppStyles.m2.copyWith(
                                    color: AppColors.white,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _num++;
                                  });
                                },
                                icon: const Icon(
                                  Icons.add_rounded,
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
