import 'package:flutter/material.dart';
import 'package:spirit_app/models/informals/informal_data.dart';
import 'package:spirit_app/pages/home/widgets/home_informal_card.dart';

class HomeInformalList extends StatelessWidget {
  const HomeInformalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: Informal().allInformals.length,
        itemBuilder: (context, index) {
          final informal = Informal().allInformals[index];
          return InformalCard(informalmodel: informal);
        },
      ),
    );
  }
}
