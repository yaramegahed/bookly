import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import 'custom_button.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          text: '19.99',
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
