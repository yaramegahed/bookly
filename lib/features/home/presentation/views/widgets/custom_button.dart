import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.textColor,
    this.buttonColor,
    this.boxDecoration, required this.text,
  });

  final Color? textColor;
  final Color? buttonColor;
  final BoxDecoration? boxDecoration;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: 160,
        decoration: boxDecoration ??
            BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    topLeft: Radius.circular(16)),
                color: buttonColor ?? Colors.white),
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle18m.copyWith(
                color: textColor ?? Colors.black, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
