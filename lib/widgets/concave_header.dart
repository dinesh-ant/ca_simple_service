import 'package:ca_simple_service/constants/constant.dart';
import 'package:flutter/cupertino.dart';

class ConcaveHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 30,
        color: colorYellowLight,
      ),
      ClipPath(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 15,
          color: colorYellowLight,
        ),
        clipper: CustomClipPath(),
      ),
    ]);
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width, size.height),
        radius: Radius.elliptical(30, 4));
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
