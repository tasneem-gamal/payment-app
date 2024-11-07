import 'package:flutter/material.dart';
import 'package:payment/core/widgets/constants.dart';
import 'package:payment/core/widgets/custom_app_bar.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.checkoutPadding,
      child: const Column(
        children: [
          CustomAppBar(text: 'Payment Details')
        ],
      ),
    );
  }
}