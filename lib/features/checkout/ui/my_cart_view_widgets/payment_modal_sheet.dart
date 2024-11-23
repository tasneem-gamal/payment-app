import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/ui/payment_datails_widgets/payment_methods_list_view.dart';

class PaymentModalSheet extends StatelessWidget {
  const PaymentModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16,),
          const PaymentMethodsListView(),
          const SizedBox(height: 32,),
          CustomButton(title: 'Continue', onPressed: (){},)
        ],
      ),
    );
  }
}