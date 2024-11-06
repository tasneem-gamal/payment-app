import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/features/checkout/ui/my_cart_view.dart';

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyCartView(),
      ),
    );
  }
}