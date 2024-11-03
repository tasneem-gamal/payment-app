import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/features/checkout/ui/widgets/cart_image.dart';
import 'package:payment/features/checkout/ui/widgets/custom_app_bar.dart';
import 'package:payment/features/checkout/ui/widgets/order_info.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h),
      child: Column(
        children: [
          const CustomAppBar(),
          SizedBox(height: 16.h,),
          const CartImage(),
          const OrderInfo(
            text: 'Order Subtotal',
            subText: '60\$',
          ),
          SizedBox(height: 6.h,),
          const OrderInfo(
            text: 'Discount',
            subText: '0\$',
          ),
          SizedBox(height: 6.h,),
          const OrderInfo(
            text: 'Shipping',
            subText: '20\$',
          ),
          
        ],
      ),
    );
  }
}

