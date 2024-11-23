import 'package:flutter/material.dart';
import 'package:payment/features/checkout/ui/success_view_widgets.dart/success_view_body.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: const Icon(Icons.arrow_back, size: 30,)
        ),
      ),
      body: SafeArea(
        child: Transform.translate(
          offset: const Offset(0, -16),
          child: const SuccessViewBody()
        )
      ),
    );
  }
}