import 'package:flutter/material.dart';
import 'package:spirit_app/models/Helpdesk/icon_phn.dart';
import 'package:spirit_app/models/Helpdesk/mail_icon.dart';
import 'contacts_model.dart';

class ContactsData{
  static List<ContactModel> DialSpirit =[
    ContactModel(id:1,contact: '+91 12345 67890',icon: IconButton(onPressed: (){},
       //icon:ImageIcon(AssetImage(Assets.nov1),)
      icon:PhoneIcon(),
    )),
    ContactModel(id:1,contact: '+91 12345 67890',icon: IconButton(onPressed: (){},
      //icon:ImageIcon(AssetImage(Assets.nov1),)
      icon:PhoneIcon(),
    )),
    ContactModel(id:1,contact: '+91 12345 67890',icon: IconButton(onPressed: (){},
      //icon:ImageIcon(AssetImage(Assets.nov1),)
      icon:PhoneIcon(),
    )),];

  static List<ContactModel>ImpContacts  =[
  ContactModel(id:1,contact: '+91 12345 67890',icon: IconButton(onPressed: (){},
  //icon:ImageIcon(AssetImage(Assets.nov1),)
  icon:PhoneIcon(),
  )),
  ContactModel(id:1,contact: '+91 12345 67890',icon: IconButton(onPressed: (){},
  //icon:ImageIcon(AssetImage(Assets.nov1),)
  icon:PhoneIcon(),
  )),
];

  static List<ContactModel>Mail  =[
  ContactModel(id:1,contact: "spirit@gmail.com",icon: IconButton(onPressed: (){},
  //icon:ImageIcon(AssetImage(Assets.nov1),)
   icon:MailIcon(),
  )),
    ContactModel(id:1,contact: "spirit@gmail.com",icon: IconButton(onPressed: (){},
      //icon:ImageIcon(AssetImage(Assets.nov1),)
      icon:MailIcon(),
    )),];
  }