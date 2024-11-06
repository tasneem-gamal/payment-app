import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/features/checkout/ui/payment_datails_widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatelessWidget {
  const PaymentMethodsListView({super.key});
  
  final List<String> paymentMethodsImage = const [
    'assets/credit-card.png',
    'assets/paypal.png'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 12,),
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodsImage.length,
        itemBuilder: (context, index) => PaymentMethodItem(
          image: paymentMethodsImage[index]
        )
      ),
    );
  }
}