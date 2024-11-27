import 'package:flutter/material.dart';
import 'package:spirit_app/utils/assets.dart';
import 'contacts_model.dart';

Widget phoneIcon() {
  return IconButton(
    onPressed: () {},
    icon: const ImageIcon(
      AssetImage(Assets.phone),
      color: Color(0xFFCFFF69),
      size: 50,
    ),
  );
}

Widget mailIcon() {
  return IconButton(
    onPressed: () {},
    icon: const ImageIcon(
      AssetImage(Assets.mail),
      color: Color(0xFFCFFF69),
    ),
  );
}

class ContactsData {
  static List<ContactModel> spiritContacts = [
    ContactModel(
        id: 1,
        contact: '+91 12345 67890',
        icon: IconButton(
          onPressed: () {},
          //icon:ImageIcon(AssetImage(Assets.nov1),)
          icon: phoneIcon(),
        )),
    ContactModel(
        id: 1,
        contact: '+91 12345 67890',
        icon: IconButton(
          onPressed: () {},
          //icon:ImageIcon(AssetImage(Assets.nov1),)
          icon: phoneIcon(),
        )),
    ContactModel(
        id: 1,
        contact: '+91 12345 67890',
        icon: IconButton(
          onPressed: () {},
          //icon:ImageIcon(AssetImage(Assets.nov1),)
          icon: phoneIcon(),
        )),
  ];

  static List<ContactModel> impContacts = [
    ContactModel(
        id: 1,
        contact: '+91 12345 67890',
        icon: IconButton(
          onPressed: () {},
          //icon:ImageIcon(AssetImage(Assets.nov1),)
          icon: phoneIcon(),
        )),
    ContactModel(
        id: 1,
        contact: '+91 12345 67890',
        icon: IconButton(
          onPressed: () {},
          //icon:ImageIcon(AssetImage(Assets.nov1),)
          icon: phoneIcon(),
        )),
  ];

  static List<ContactModel> mail = [
    ContactModel(
        id: 1,
        contact: "spirit@gmail.com",
        icon: IconButton(
          onPressed: () {},
          //icon:ImageIcon(AssetImage(Assets.nov1),)
          icon: mailIcon(),
        )),
    ContactModel(
        id: 1,
        contact: "spirit@gmail.com",
        icon: IconButton(
          onPressed: () {},
          //icon:ImageIcon(AssetImage(Assets.nov1),)
          icon: mailIcon(),
        )),
  ];
}
