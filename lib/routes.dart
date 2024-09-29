import 'package:flutter/material.dart';
import 'package:spirit_app/pages/auth/sign_in_screen.dart';
import 'package:spirit_app/pages/home/home.dart';
import 'package:spirit_app/pages/merch/your_cart_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  initRoute: (_) => const SignInScreen(),
  homeRoute: (_) => const Home(),
  yourCartRoute: (_) => const YourCartScreen(),
};

const initRoute = "/";
const homeRoute = "/home";
const yourCartRoute = "/your_cart";
