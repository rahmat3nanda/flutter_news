import 'package:flutter/material.dart';

class RightSideCanvas extends StatelessWidget {
  const RightSideCanvas({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RightSideClip(),
      child: Container(
        decoration: BoxDecoration(color: color),
      ),
    );
  }
}

class RightSideClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var path = Path();

    path.moveTo(width, height * 0.3);
    path.quadraticBezierTo(
        width * 0.7, height * 0.4, width * 0.75, height * 0.55);
    path.quadraticBezierTo(
        width * 0.8, height * 0.65, width * 0.65, height * 0.8);
    path.quadraticBezierTo(width * 0.5, height * 0.95, width * 0.2, height);
    path.lineTo(width, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
