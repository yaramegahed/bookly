import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_best_seller_list_view.dart';
import 'custom_best_seller_list_view_builder.dart';
import 'custom_books_list_view_builder.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            CustomBooksListViewBuilder(),
            SizedBox(
              height: 49,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Best Seller",
                style: Styles.textStyle20sb,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      SliverFillRemaining(child: CustomBestSellerListViewBuilder()),
    ]);
  }
}


