import 'package:flutter/material.dart';
import 'package:payment/core/theming/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.arrow_back, size: 30, color: Colors.black,)
        ),
        const Spacer(),
        Text(
          text,
          style: Styles.textStyle25
        ),
        const Spacer(),
        const Spacer()
      ],
    );
  }
}