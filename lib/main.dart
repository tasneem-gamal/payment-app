import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/payment_app.dart';

void main() {
  ScreenUtil.ensureScreenSize;
  runApp(const PaymentApp());
}

