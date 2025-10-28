import 'package:flutter/material.dart';

import 'custom_best_seller_container.dart';

class CustomDetailsListView extends StatelessWidget {
  const CustomDetailsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                CustomBestSellerContainer(imageUrl: '',),
            separatorBuilder: (context, index) => SizedBox(
              width: 10,
            ),
            itemCount: 5));
  }
}
