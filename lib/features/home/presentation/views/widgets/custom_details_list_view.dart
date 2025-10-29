import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';
import 'custom_best_seller_container.dart';

class CustomDetailsListView extends StatelessWidget {
  final List<BookEntity> books;

  const CustomDetailsListView({
    super.key,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 110,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final book = books[index];
              return CustomBestSellerContainer(
                imageUrl: book.image ?? '',
              );
            },
            separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
            itemCount: books.length));
  }
}
