import 'package:flutter/material.dart';
import 'package:payment/features/checkout/ui/payment_datails_widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: PaymentDetailsViewBody()),
    );
  }
}