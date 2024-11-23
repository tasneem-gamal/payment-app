import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/widgets/constants.dart';
import 'package:payment/core/widgets/custom_app_bar.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/ui/payment_datails_widgets/custom_credit_card.dart';
import 'package:payment/features/checkout/ui/payment_datails_widgets/payment_methods_list_view.dart';
import 'package:payment/features/checkout/ui/success_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.checkoutPadding,
      child: CustomScrollView(
        slivers:[
            const SliverToBoxAdapter(child: CustomAppBar(text: 'Payment Details')),
            SliverToBoxAdapter(child: SizedBox(height: 24.h,)),
            const SliverToBoxAdapter(child: PaymentMethodsListView()),
            SliverToBoxAdapter(child: SizedBox(height: 16.h,)),
            SliverToBoxAdapter(child: CustomCreditCard(
              formKey: formKey,
              autovalidateMode: autovalidateMode,
            )),
            SliverToBoxAdapter(child: SizedBox(height: 50.h,)),
            SliverFillRemaining(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: CustomButton(
                    title: 'Pay',
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                        formKey.currentState!.save();
                      } else {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SuccessView()
                          )
                        );
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                ),
              ),
            )
        ]
      ),
    );
  }
}

