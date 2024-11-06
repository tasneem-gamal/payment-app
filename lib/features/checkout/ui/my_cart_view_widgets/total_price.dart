import 'package:flutter/material.dart';
import 'package:payment/core/theming/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key, required this.text, required this.subText,
  });
  
  final String text, subText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Styles.textStyle24,
        ),
        const Spacer(),
        Text(
          subText,
          style: Styles.textStyle24,
        ),
      ],
    );
  }
}
