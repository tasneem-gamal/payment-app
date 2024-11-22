import 'package:flutter/material.dart';

class CustomCheckItem extends StatelessWidget {
  const CustomCheckItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xFFD9D9D9),
      child: CircleAvatar(
        radius: 38,
        backgroundColor: Color(0xff34A853),
        child: Icon(Icons.check, size: 40, color: Colors.white,),
      ),
    );
  }
}