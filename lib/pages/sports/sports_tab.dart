import 'package:flutter/material.dart';
import 'package:spirit_app/utils/styles/colors.dart';

class Sports extends StatefulWidget {
  const Sports({super.key});

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Text("This is Sports Page"),
      ),
    );
  }
}
