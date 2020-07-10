import 'package:ca_simple_service/constants/constant.dart';
import 'package:flutter/material.dart';

class ConvexHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        child: ClipPath(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: colorBlue,
          ),
          clipper: CustomClipPath(),
        ),
      ),
      Positioned(
        top: 50,
        left: MediaQuery.of(context).size.width / 2 - 30,
        child: RotationTransition(
          turns: AlwaysStoppedAnimation(45 / 360),
          child: Image.asset(
            'images/touch-white.png',
            width: 60,
            height: 60,
          ),
        ),
      ),
    ]);
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 100,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
