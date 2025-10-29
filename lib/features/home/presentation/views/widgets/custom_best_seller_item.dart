import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';
import '../../../domain/entities/book_entity.dart';
import 'booking_rating.dart';
import 'custom_best_seller_container.dart';

class CustomBestSellerItem extends StatelessWidget {
  final BookEntity books;

  final String imageUrl;
  final String bookName;
  final String bookAuthor;
  final double? bookPrice;
  final double bookRating;

  const CustomBestSellerItem({
    super.key,
    required this.imageUrl,
    required this.bookName,
    required this.bookAuthor,
    required this.bookPrice,
    required this.bookRating,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRouter.kBookDetailsView, extra: books);
      },
      child: Row(
        children: [
          CustomBestSellerContainer(
            imageUrl: imageUrl,
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Text(bookName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20sb),
                ),
                Text(
                  bookAuthor,
                  style: Styles.textStyle14sb,
                ),
                Row(
                  children: [
                    Text(
                      bookPrice != null
                          ? "${bookPrice!.toStringAsFixed(2)} €"
                          : "Free",
                      style: Styles.textStyle20b,
                    ),
                    Spacer(),
                    BookingRating(
                      rating: bookRating.toString(),
                    )
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
