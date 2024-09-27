import 'package:flutter/material.dart';

class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();
    path.moveTo(width * 0.1, 0);
    path.lineTo(width, 0);
    path.lineTo(width * 0.9, height);
    path.lineTo(0, height);
    path.close();

    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0
      ..color = Colors.red;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ClipParallelogram extends CustomClipper<Path> {
  final double percent;

  ClipParallelogram({this.percent = 0.1});

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    Path path = Path();
    path.moveTo(width * percent, 0);
    path.lineTo(width, 0);
    path.lineTo(width * (1 - percent), height);
    path.lineTo(0, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
