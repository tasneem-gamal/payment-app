import 'package:flutter/material.dart';
import 'package:payment/features/checkout/ui/my_cart_view.dart';

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}