import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/widgets/constants.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/ui/payment_datails_widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(child: PaymentDetailsViewBody()),
      bottomNavigationBar: Padding(
        padding: Constants.checkoutPadding.copyWith(bottom: 12.h),
        child: CustomButton(
          onPressed: (){},
          title: 'Pay'
        ),
      ),
    );
  }
}