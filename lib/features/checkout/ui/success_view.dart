import 'package:flutter/material.dart';
import 'package:payment/features/checkout/ui/success_view_widgets.dart/success_view_body.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SuccessViewBody()),
    );
  }
}