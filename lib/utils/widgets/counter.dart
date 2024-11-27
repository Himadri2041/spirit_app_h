import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/styles.dart';

class Counter extends StatefulWidget {
  final Function(int) onChange;
  final int initialValue;
  const Counter({super.key, required this.onChange, this.initialValue = 1});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int _num;

  @override
  void initState() {
    _num = widget.initialValue;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            if(_num == 0) return;
            setState(() {
              _num--;
              widget.onChange(_num);
            });
          },
          icon: const Icon(
            Icons.remove_rounded,
            color: AppColors.white,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.white, width: 1.5),
          ),
          child: Text(
            "$_num",
            style: AppStyles.m2.copyWith(
              color: AppColors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              _num++;
              widget.onChange(_num
              );
            });
          },
          icon: const Icon(
            Icons.add_rounded,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
