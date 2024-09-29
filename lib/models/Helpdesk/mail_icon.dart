import 'package:flutter/material.dart';
import 'package:spirit_app/utils/assets.dart';

class mailh extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: ImageIcon(
        AssetImage(Assets.mail),
        color: Color(0xFFCFFF69),
        size: 40,
      ),
    );
  }
}