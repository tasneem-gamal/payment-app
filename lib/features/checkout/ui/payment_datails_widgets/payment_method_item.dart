import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 103.w,
      height: 62.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1.50, color: Color(0xff34A853)),
          borderRadius: BorderRadius.circular(15)
        ),
        shadows: const [
          BoxShadow(
            color: Color(0xff34A853),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0
          )
        ]
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white
        ),
        child: Center(
          child: Image.asset('assets/credit-card.png'),
        ),
      ),
    );
  }
}