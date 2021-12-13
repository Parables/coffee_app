import 'package:coffee_app/theme/app_theme.dart';
import 'package:coffee_app/widgets/my_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.eerieBlackOne,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Cart",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Centaur',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                      key: UniqueKey(),
                      background: const SizedBox(),
                      secondaryBackground: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          decoration: BoxDecoration(
                              color: AppColors.peach,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            IconlyLight.delete,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: Material(
                        color: AppColors.darkCharcoal,
                        borderRadius: BorderRadius.circular(12),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox.square(
                                dimension: 70,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/08/09/13/21/coffee-1580595_960_720.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Cappuccino',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        // fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      'Bursting Blueberry',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        // fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    // Spacer(),
                                    Text(
                                      '₹ 249',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Material(
                                color: AppColors.purpleTaupe,
                                borderRadius: BorderRadius.circular(10),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: AppColors.pearl,
                                      ),
                                      child: const Icon(
                                        Icons.remove,
                                        size: 16,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      "2",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Centaur',
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: AppColors.pearl,
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        size: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 15);
                  },
                ),
              ),
              const SizedBox(height: 10),
              // const Divider(color: Colors.grey),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomPaint(
                    painter: DrawDottedhorizontalline(drawPaint: Paint())),
              ),
              const SizedBox(height: 10),
              ClipPath(
                // clipper: CouponClipper(),
                child: Stack(
                  children: [
                    Container(
                      height: 40,
                      color: AppColors.temptress,
                      child: Row(
                        children: const [
                          SizedBox(width: 20),
                          Text(
                            "Apply Coupon Code",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Centaur',
                              fontSize: 18,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                            size: 16,
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 12.5,
                      left: -5,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.eerieBlackOne,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 12.5,
                      right: -5,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.eerieBlackOne,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Delivery Charges',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Centaur',
                        fontSize: 16),
                  ),
                  Text(
                    '₹ 49',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Taxes',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Centaur',
                        fontSize: 16),
                  ),
                  Text(
                    '₹ 64.87',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(color: Colors.grey),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Grand Total',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Centaur',
                        fontSize: 20),
                  ),
                  Text(
                    '₹ 1009.87',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    "PAY NOW",
                    style: TextStyle(
                      color: AppColors.eerieBlackOne,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: AppColors.pearl,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomNavBar(activeMenu: 2),
    );
  }
}

class CouponClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // double yHeight = ((size.height / 6) * 2);
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, yHeight);
    // path.addArc(
    //     Rect.fromCircle(
    //         center: Offset(size.width, yHeight + (yHeight / 2)),
    //         radius: yHeight),
    //     0,
    //     yHeight);
    // path.lineTo(0, size.height);
    // path.lineTo(0, 0);
    // path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class DrawDottedhorizontalline extends CustomPainter {
  DrawDottedhorizontalline({required this.drawPaint});

  Paint drawPaint;

  @override
  void paint(Canvas canvas, Size size) {
    drawPaint.color = Colors.white;
    for (double i = -300; i < 300; i = i + 15) {
      // 15 is space between dots
      if (i % 3 == 0) {
        canvas.drawLine(Offset(i, 0.0), Offset(i + 10, 0.0), drawPaint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
