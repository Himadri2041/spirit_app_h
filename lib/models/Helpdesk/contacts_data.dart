import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spirit_app/models/Helpdesk/icon_phn.dart';
import 'package:spirit_app/models/Helpdesk/mail_icon.dart';
import 'package:spirit_app/utils/assets.dart';
import 'Contacts_model.dart';

class ContactsData{
  static List<ContactModel> DialSpirit =[
    ContactModel(id:1,contact: '+91 12345 67890',icon: IconButton(onPressed: (){},
       //icon:ImageIcon(AssetImage(Assets.nov1),)
      icon:phnh(),
    )),
    ContactModel(id:1,contact: '+91 12345 67890',icon: IconButton(onPressed: (){},
      //icon:ImageIcon(AssetImage(Assets.nov1),)
      icon:phnh(),
    )),
    ContactModel(id:1,contact: '+91 12345 67890',icon: IconButton(onPressed: (){},
      //icon:ImageIcon(AssetImage(Assets.nov1),)
      icon:phnh(),
    )),];

  static List<ContactModel>ImpContacts  =[
  ContactModel(id:1,contact: '+91 12345 67890',icon: IconButton(onPressed: (){},
  //icon:ImageIcon(AssetImage(Assets.nov1),)
  icon:phnh(),
  )),
  ContactModel(id:1,contact: '+91 12345 67890',icon: IconButton(onPressed: (){},
  //icon:ImageIcon(AssetImage(Assets.nov1),)
  icon:phnh(),
  )),
];

  static List<ContactModel>Mail  =[
  ContactModel(id:1,contact: "spirit@gmail.com",icon: IconButton(onPressed: (){},
  //icon:ImageIcon(AssetImage(Assets.nov1),)
   icon:mailh(),
  )),
    ContactModel(id:1,contact: "spirit@gmail.com",icon: IconButton(onPressed: (){},
      //icon:ImageIcon(AssetImage(Assets.nov1),)
      icon:mailh(),
    )),];
  }