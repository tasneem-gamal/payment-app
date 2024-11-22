import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/theming/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.onPressed, required this.title,
  });
  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55.h,
      child: ElevatedButton(
        onPressed: onPressed, 
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
        child: Text(
          title,
          style: Styles.textStyle16.copyWith(
            color: Colors.white,
          ),
        )
      ),
    );
  }
}