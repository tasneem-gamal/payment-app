import 'package:flutter/material.dart';
import 'package:payment/core/widgets/constants.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.checkoutPadding.copyWith(bottom: 24),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            )
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            )
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
            right: 28,
            left: 28,
            child: Row(
              children:
                List.generate(
                  30, 
                  (index) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Container(
                        height: 2,
                        color: const Color(0xffB8B8B8),
                      ),
                    )
                  )
                )
            )
          ),
          const Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFD9D9D9),
              child: CircleAvatar(
                radius: 38,
                backgroundColor: Color(0xff34A853),
                child: Icon(Icons.check, size: 40, color: Colors.white,),
              ),
            )
          )
        ],
      ),
    );
  }
}