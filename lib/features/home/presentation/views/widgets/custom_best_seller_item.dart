import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_best_seller_container.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBestSellerContainer(),
        SizedBox(width: 30),
        Column(
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
                SizedBox(
                  width: 45,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 18,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "4.8",
                  style: Styles.textStyle16m,
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  "(2500)",
                  style: Styles.textStyle14sb,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
