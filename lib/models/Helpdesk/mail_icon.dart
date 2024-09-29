import 'package:flutter/material.dart';
import 'package:spirit_app/utils/assets.dart';

class MailIcon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: ImageIcon(
        AssetImage(Assets.mail),
        color: Color(0xFFCFFF69),
      ),
    );
  }
}