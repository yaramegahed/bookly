import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/custom_best_seller_item.dart';

class CustomSearchResultList extends StatelessWidget {
  final BookEntity books;

  const CustomSearchResultList({
    super.key, required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) =>
                CustomBestSellerItem(
                  imageUrl: '',
                  bookName: '',
                  bookAuthor: '',
                  bookPrice: .5,
                  bookRating: 44,
                  books
                  :books,
                ),
            separatorBuilder: (context, index) =>
                SizedBox(
                  height: 10,
                ),
            itemCount: 10));
  }
}
