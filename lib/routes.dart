import 'package:flutter/material.dart';
import 'package:spirit_app/pages/auth/sign_in_screen.dart';
import 'package:spirit_app/pages/home/home.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "/" : (_)=> const SignInScreen(),
  "/home" : (_)=> const Home(),
};
