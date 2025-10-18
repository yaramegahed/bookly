import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'booking_rating.dart';
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
              BookingRating()
            ],
          ),
        )
      ],
    );
  }
}

