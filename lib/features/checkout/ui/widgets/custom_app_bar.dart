import 'package:flutter/material.dart';
import 'package:payment/core/theming/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

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
          'My Cart',
          style: Styles.textStyle25
        ),
        const Spacer(),
        const Spacer()
      ],
    );
  }
}