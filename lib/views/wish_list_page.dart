import 'package:flutter/material.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: CouponArcClipper(),
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
            width: 300,
            height: 150,
          ),
        ),
      ),
    );
  }
}

class CouponArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double yHeight = ((size.height / 6) * 2);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, yHeight);
    // path.addOval(Rect.fromCenter(center: Offset(0, c), width: 50, height: 50));

    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    // path.addOval(Rect.fromCenter(center: Offset(0, c), width: 50, height: 50));

    // path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
