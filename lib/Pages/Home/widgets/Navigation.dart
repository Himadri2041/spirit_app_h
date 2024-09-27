import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spirit_app/utils/styles/colors.dart';

import '../../Merch/Merch.dart';
import '../../Profile/Profile.dart';
import '../../Pronites/Pronites.dart';
import '../../Sports/Sports.dart';
import '../Home.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  int tabindex=0;
  late List<Widget> _pages=[HomePage(),Sports(),Pronites(),Merch(),Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[tabindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.Black,
        currentIndex: tabindex,
        onTap: (index){
          setState(() {
            tabindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/home.svg"),label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/sports.svg"),label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/mic.svg"),label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/tee.svg"),label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/profile.svg"),label: ""),
        ],)
    );
  }
}
