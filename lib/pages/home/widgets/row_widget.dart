import 'package:flutter/material.dart';
import 'package:spirit_app/models/Helpdesk/contacts_model.dart';
import 'package:spirit_app/utils/styles/styles.dart';

class Contactrow extends StatelessWidget {
  final ContactModel contactModel;
  const Contactrow({super.key, required this.contactModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:60,
      width:double.infinity,
      child: Row(
        children: [
          contactModel.icon,
          SizedBox(width: 8,),
          Text(contactModel.contact,
          style:AppStyles.h1),
        ],
      ),
    );

  }
}
