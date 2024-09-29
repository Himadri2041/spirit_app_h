import 'package:flutter/material.dart';
import 'package:spirit_app/routes.dart';
import 'package:spirit_app/utils/globals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: "/",
    );
  }
}
