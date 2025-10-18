import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class CustomBestSellerContainer extends StatelessWidget {
  const CustomBestSellerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(20)),
      child: Image.asset(
        AssetsData.bookImage,
        fit: BoxFit.fill,
      ),
    );
  }
}
