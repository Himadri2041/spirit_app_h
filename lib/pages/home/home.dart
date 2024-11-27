import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spirit_app/pages/home/home_tab.dart';
import 'package:spirit_app/pages/merch/merch_tab.dart';
import 'package:spirit_app/pages/profile/profile_tab.dart';
import 'package:spirit_app/pages/pronite/pronite_tab.dart';
import 'package:spirit_app/pages/sports/sports_tab.dart';
import 'package:spirit_app/utils/styles/colors.dart';
import 'package:spirit_app/utils/tabs.dart';
import 'package:spirit_app/utils/widgets/clip_path.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabindex = 0;
  late PageController _pageController;
  final _pages = const [HomeTab(), Sports(), Pronites(), Merch(), Profile()];

  @override
  void initState() {
    _pageController = PageController(initialPage: tabindex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: PageView.builder(
        controller: _pageController,
        itemCount: _pages.length,
        onPageChanged: (index) {
          setState(() {
            tabindex = index;
          });
        },
        itemBuilder: (context, index) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.blank,
        currentIndex: tabindex,
        onTap: (index) {
          if (index - tabindex == 1) {
            _pageController.nextPage(
                duration: const Duration(milliseconds: 300), curve: Curves.ease);
          } else if (index - tabindex == -1) {
            _pageController.previousPage(
                duration: const Duration(milliseconds: 300), curve: Curves.ease);
          } else {
            _pageController.jumpToPage(index);
          }
          setState(() {
            tabindex = index;
          });
        },
        items: List.generate(HomeTabs.values.length, (index) {
          final tab = HomeTabs.values[index];
          final icon = SvgPicture.asset(tab.icon, height: 24, width: 24);
          final selected = index == tabindex;
          return BottomNavigationBarItem(
            icon: selected
                ? ClipPath(
                    clipper: ClipParallelogram(percent: 0.2),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: icon,
                    ),
                  )
                : icon,
            label: "",
          );
        }),
      ),
    );
  }
}
