import 'package:flutter/material.dart';

class CustomImageLoading extends StatelessWidget {
  const CustomImageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 224,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(20)),
        );
  }
}
