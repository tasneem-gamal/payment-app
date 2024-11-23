import 'package:flutter/material.dart';
import 'package:payment/core/widgets/constants.dart';
import 'package:payment/features/checkout/ui/success_view_widgets.dart/custom_check_item.dart';
import 'package:payment/features/checkout/ui/success_view_widgets.dart/custom_dashed_line.dart';
import 'package:payment/features/checkout/ui/success_view_widgets.dart/success_card.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.checkoutPadding.copyWith(bottom: 24),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const SuccessCard(),
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
            child: const CustomDashedLine()
          ),
          const Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: CustomCheckItem()
          )
        ],
      ),
    );
  }
}




