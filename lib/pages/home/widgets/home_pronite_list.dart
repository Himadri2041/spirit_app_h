import 'package:flutter/material.dart';
import 'package:spirit_app/pages/home/widgets/home_profile_card.dart';
import 'package:spirit_app/models/pronite/pronite_data.dart';

class HomeProniteList extends StatelessWidget {
  const HomeProniteList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: Pronite().allPronites.length,
        itemBuilder: (context, index) {
          final pronite = Pronite().allPronites[index];
          return HomeProniteCard(proniteModel: pronite);
        },
      ),
    );
  }
}
