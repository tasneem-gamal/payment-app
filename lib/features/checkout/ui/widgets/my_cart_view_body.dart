import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/features/checkout/ui/widgets/custom_app_bar.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h),
      child: const Column(
        children: [
          CustomAppBar()
        ],
      ),
    );
  }
}

