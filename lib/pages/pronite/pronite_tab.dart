import 'package:flutter/material.dart';

class Pronites extends StatefulWidget {
  const Pronites({super.key});

  @override
  State<Pronites> createState() => _PronitesState();
}

class _PronitesState extends State<Pronites> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("This is Pronites Page"),),
    );
  }
}
