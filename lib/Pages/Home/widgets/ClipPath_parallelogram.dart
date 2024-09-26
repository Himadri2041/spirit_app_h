
import 'package:flutter/cupertino.dart';
import 'package:spirit_app/utils/styles/colors.dart';

Parallelogram(){
  return SizedBox(
    height: 210,
    width: 350,
    child: Stack(
      children: [
        ClipPath(
          child: Image.asset("assets/images/WhatsApp Image 2023-11-19 at 00.50.47_bbc6a890.jpg",fit: BoxFit.fitHeight,),
            clipper: ClipParallelogram(),
          ),
        ClipPath(
          clipper: ClipParallelogram(),
          child: Container(
            height: 210,
            width: 350,
            decoration: BoxDecoration(border:Border.all(color: AppColors.Accent,width: 3) ),
          ),

        )
      ],
    ),
  );
}
class ClipParallelogram extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();

    // top left point
    path.lineTo(width*0.1, 0);

    // top right point
    path.lineTo(width, 0);

    // bottom right point
    path.lineTo(width*0.9, height);

    // bottom left point
    path.lineTo(0, height);

    // go back to -> top left point
    path.lineTo(width*0.1, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}