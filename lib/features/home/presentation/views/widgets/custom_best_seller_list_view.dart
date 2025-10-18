import 'package:flutter/material.dart';

import 'custom_best_seller_item.dart';

class CustomBestSellerListView extends StatelessWidget {
  const CustomBestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => CustomBestSellerItem(),
        separatorBuilder: (context, index) => SizedBox(
          height: 20,
        ),
        itemCount: 5);
  }
}
