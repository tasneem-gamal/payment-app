import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    this.isActive = false, required this.image
  });
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 600),
      width: 103.w,
      height: 62.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.50, 
            color: isActive ? const Color(0xff34A853) : const Color.fromARGB(255, 100, 99, 99)
          ),
          borderRadius: BorderRadius.circular(15)
        ),
        shadows: [
          BoxShadow(
            color: isActive ? const Color(0xff34A853) : Colors.white,
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0
          )
        ]
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white
        ),
        child: Center(
          child: Image.asset(image),
        ),
      ),
    );
  }
}