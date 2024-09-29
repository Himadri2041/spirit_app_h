import 'package:flutter/material.dart';
import 'package:spirit_app/utils/assets.dart';

class PhoneIcon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: ImageIcon(
        AssetImage(Assets.phone),
        color: Color(0xFFCFFF69),
        size: 50,
      ),
    );
  }
}