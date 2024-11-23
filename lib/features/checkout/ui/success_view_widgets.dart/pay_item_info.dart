import 'package:flutter/material.dart';
import 'package:payment/core/theming/styles.dart';

class PayItemInfo extends StatelessWidget {
  const PayItemInfo({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.textStyle18,
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500
          ),
        ),
      ],
    );
  }
}
