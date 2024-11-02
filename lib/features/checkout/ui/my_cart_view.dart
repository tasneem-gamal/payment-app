import 'package:flutter/material.dart';
import 'package:payment/features/checkout/ui/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: MyCartViewBody()),
    );
  }
}
