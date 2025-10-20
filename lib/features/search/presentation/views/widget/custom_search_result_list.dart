import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/custom_best_seller_item.dart';

class CustomSearchResultList extends StatelessWidget {
  const CustomSearchResultList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) => CustomBestSellerItem(),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: 10));
  }
}
