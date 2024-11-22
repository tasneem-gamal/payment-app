import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber= '', expiryDate = '', cardHolderName = '', cvvCode = '';
  final GlobalKey<FormState> formKey = GlobalKey();
  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber, 
          expiryDate: expiryDate, 
          cardHolderName: cardHolderName, 
          isHolderNameVisible: true,
          cvvCode: cvvCode, 
          showBackView: showBackView, 
          onCreditCardWidgetChange: (value){},
          padding: 0,
        ),
        CreditCardForm(
          cardNumber: cardNumber, 
          expiryDate: expiryDate, 
          cardHolderName: cardHolderName, 
          cvvCode: cvvCode, 
          onCreditCardModelChange: (creditCardModel){
            cardNumber = creditCardModel.cardNumber;
            expiryDate = creditCardModel.expiryDate;
            cardHolderName = creditCardModel.cardHolderName;
            cvvCode = creditCardModel.cvvCode;
            showBackView = creditCardModel.isCvvFocused;
            setState(() {});
          }, 
          formKey: formKey
        ),
      ],
    );
  }
}