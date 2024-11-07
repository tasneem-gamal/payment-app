import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/features/checkout/ui/payment_datails_widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodsImage = const [
    'assets/credit-card.png',
    'assets/paypal.png'
  ];
  
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 12,),
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodsImage.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            activeIndex = index;
            setState(() {});
          },
          child: PaymentMethodItem(
            image: paymentMethodsImage[index],
            isActive: activeIndex == index,
          ),
        )
      ),
    );
  }
}