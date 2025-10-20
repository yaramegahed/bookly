import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookingRating extends StatelessWidget {
  const BookingRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: Colors.amber,
          size: 20,
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
    );
  }
}
