import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spirit_app/Pages/Home/widgets/ClipPath_parallelogram.dart';
import 'package:spirit_app/utils/styles/colors.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List item =[1,2,3,4,5];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
          items: item.map((i){
            return Container(height: 120,width: 120,color: AppColors.Accent,);
          }).toList(),
          options: CarouselOptions(
            enlargeCenterPage: true,
            height: 400,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn
          )),
    );

  }
}
