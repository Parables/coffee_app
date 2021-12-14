import 'package:coffee_app/models/app_state.dart';
import 'package:coffee_app/widgets/apply_coupon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckoutDetailsWidget extends StatelessWidget {
  const CheckoutDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 10),
        // const Divider(color: Colors.grey),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomPaint(
              painter: DrawDottedhorizontalline(drawPaint: Paint())),
        ),
        const SizedBox(height: 10),
        const ApplyCoupon(),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Delivery Charges',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Centaur', fontSize: 16),
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
                  color: Colors.white, fontFamily: 'Centaur', fontSize: 16),
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
          children: [
            const Text(
              'Grand Total',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Centaur', fontSize: 20),
            ),
            Consumer<AppState>(builder: (context, appState, child) {
              return Text(
                '₹ ${appState.calcTotal()}',
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              );
            }),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
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
