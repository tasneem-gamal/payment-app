import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/features/checkout/ui/widgets/cart_image.dart';
import 'package:payment/features/checkout/ui/widgets/custom_app_bar.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/ui/widgets/order_info.dart';
import 'package:payment/features/checkout/ui/widgets/total_price.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h),
      child: Column(
        children: [
          const CustomAppBar(),
          const CartImage(),
          const OrderInfo(
            text: 'Order Subtotal',
            subText: '\$60',
          ),
          SizedBox(height: 6.h,),
          const OrderInfo(
            text: 'Discount',
            subText: '\$0',
          ),
          SizedBox(height: 6.h,),
          const OrderInfo(
            text: 'Shipping',
            subText: '\$20',
          ),
          SizedBox(height: 6.h,),
          const Divider(
            thickness: 2,
            indent: 12,
            endIndent: 12,
          ),
          SizedBox(height: 6.h,),
          const TotalPrice(
            text: 'Total',
            subText: '\$80',
          ),
          SizedBox(height: 8.h,),
          const CustomButton()
        ],
      ),
    );
  }
}



