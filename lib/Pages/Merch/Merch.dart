import 'package:flutter/material.dart';

class Merch extends StatefulWidget {
  const Merch({super.key});

  @override
  State<Merch> createState() => _MerchState();
}

class _MerchState extends State<Merch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("This is Merch Page"),),
    );
  }
}
