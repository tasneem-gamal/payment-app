import 'package:flutter/material.dart';

class CartImage extends StatelessWidget {
  const CartImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/cart.png')
        )
      ),
    );
  }
}
