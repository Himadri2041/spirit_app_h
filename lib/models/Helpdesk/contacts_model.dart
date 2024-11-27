import 'package:flutter/material.dart';

class ContactModel{
  final int id;
  final IconButton icon;
   final String contact;

  ContactModel({
    required this.contact,
    required this.icon,
    required this.id,

  });
}