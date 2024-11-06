import 'package:flutter/material.dart';
import 'package:payment/core/theming/styles.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({
    super.key, required this.text, required this.subText,
  });
  
  final String text, subText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Styles.textStyle18,
        ),
        const Spacer(),
        Text(
          subText,
          style: Styles.textStyle18.copyWith(
            color: Colors.grey
          ),
        ),
      ],
    );
  }
}


