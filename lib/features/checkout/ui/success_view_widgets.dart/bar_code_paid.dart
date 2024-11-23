import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment/core/theming/styles.dart';

class BarCodePaid extends StatelessWidget {
  const BarCodePaid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(FontAwesomeIcons.barcode, size: 64,),
        Container(
          width: 113,
          height: 58,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(
                color: Color(0xff34A835),
                width: 1.5,
              )
            )
          ),
          child: Center(
            child: Text(
              'PAID',
              textAlign: TextAlign.center,
              style: Styles.textStyle24.copyWith(
                color:const Color(0xff34A853),
              ),  
            ),
          ),
        )
      ],
    );
  }
}