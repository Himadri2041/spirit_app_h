import 'package:flutter/material.dart';
import 'package:spirit_app/utils/styles/colors.dart';

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
      ..strokeWidth = 8
      ..color = AppColors.primaryColor;

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

class ClipLeftAlign extends CustomClipper<Path> {
  final double delta;
  ClipLeftAlign({this.delta = 10});

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(width, 0);
    path.lineTo(width, height);
    path.lineTo(delta, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ClipRightAlign extends CustomClipper<Path> {
  final double delta;
  ClipRightAlign({this.delta = 10});

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(width, 0);
    path.lineTo(width - delta, height);
    path.lineTo(0, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashedLength;
  final double blankLength;

  DashedBorderPainter({
    required this.color,
    this.strokeWidth = 2.0,
    this.dashedLength = 6.0,
    this.blankLength = 4.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    // Top side
    _drawDashedLine(canvas, paint, Offset(0, 0), Offset(size.width, 0));

    // Right side
    _drawDashedLine(canvas, paint, Offset(size.width, 0), Offset(size.width, size.height));

    // Bottom side
    _drawDashedLine(canvas, paint, Offset(size.width, size.height), Offset(0, size.height));

    // Left side
    _drawDashedLine(canvas, paint, Offset(0, size.height), Offset(0, 0));
  }

  void _drawDashedLine(Canvas canvas, Paint paint, Offset start, Offset end) {
    double totalLength = (end - start).distance;
    double drawnLength = 0;
    Offset direction = (end - start) / totalLength;

    while (drawnLength < totalLength) {
      final dashStart = start + direction * drawnLength;
      final dashEnd = start + direction * (drawnLength + dashedLength).clamp(0, totalLength);
      canvas.drawLine(dashStart, dashEnd, paint);
      drawnLength += dashedLength + blankLength;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

