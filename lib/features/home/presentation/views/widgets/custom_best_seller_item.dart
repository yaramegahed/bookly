import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';
import 'booking_rating.dart';
import 'custom_best_seller_container.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRouter.kBookDetailsView);
      },
      child: Row(
        children: [
          CustomBestSellerContainer(),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Text("Harry Potter \nand the Goblet of Fire",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20sb),
                ),
                Text(
                  "J.K. Rowling",
                  style: Styles.textStyle14sb,
                ),
                Row(
                  children: [
                    Text(
                      "19.99 €",
                      style: Styles.textStyle20b,
                    ),
                    Spacer(),
                    BookingRating()
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
