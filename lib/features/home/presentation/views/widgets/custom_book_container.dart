import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class CustomBookContainer extends StatelessWidget {
  const CustomBookContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 224,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(20)),
      child: Image.asset(
        AssetsData.bookImage,
        fit: BoxFit.fill,
      ),
    );
  }
}
