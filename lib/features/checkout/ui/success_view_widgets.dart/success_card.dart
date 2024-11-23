import 'package:flutter/material.dart';
import 'package:payment/core/theming/styles.dart';
import 'package:payment/features/checkout/ui/my_cart_view_widgets/total_price.dart';
import 'package:payment/features/checkout/ui/success_view_widgets.dart/bar_code_paid.dart';
import 'package:payment/features/checkout/ui/success_view_widgets.dart/card_info_widget.dart';
import 'package:payment/features/checkout/ui/success_view_widgets.dart/pay_item_info.dart';

class SuccessCard extends StatelessWidget {
  const SuccessCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank You!',
              textAlign: TextAlign.center,
              style: Styles.textStyle25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.textStyle18,
            ),
            const SizedBox(height: 42,),
            const PayItemInfo(title: 'Date', subTitle: '25/5/2024',),
            const SizedBox(height: 20,),
            const PayItemInfo(title: 'Time', subTitle: '03:00 pm',),
            const SizedBox(height: 20,),
            const PayItemInfo(title: 'To', subTitle: 'Jamila Awad',),
            const Divider(
              height: 60,
              thickness: 2,
            ),
            const TotalPrice(text: 'Total', subText: r'$500'),
            const SizedBox(height: 30,),
            const CardInfoWidget(),
            const Spacer(),
            const BarCodePaid(),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * 0.2 + 20) / 2) - 29
            )
          ],
        ),
      ),
    );
  }
}



