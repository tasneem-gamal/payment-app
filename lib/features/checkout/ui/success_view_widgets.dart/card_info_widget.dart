import 'package:flutter/material.dart';
import 'package:payment/core/theming/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 73,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        )
      ),
      child: Row(
        children: [
          Image.asset('assets/master_card.png'),
          const SizedBox(width: 22,),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Credit Card \n',
                  style: Styles.textStyle16
                ),
                TextSpan(
                  text: 'Mastercard **7',
                  style: Styles.textStyle14
                )
              ]
            )
          )
        ],
      ),
    );
  }
}