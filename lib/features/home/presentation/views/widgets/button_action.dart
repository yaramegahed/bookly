import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import 'custom_button.dart';

class ButtonAction extends StatelessWidget {
  final double price;
  const ButtonAction({
    super.key, required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          text: price.toString(),
        ),
        CustomButton(
          textColor: Colors.white,
          boxDecoration: BoxDecoration(
              color: kButtonColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16))),
          text: 'Free preview',
        ),
      ],
    );
  }
}
