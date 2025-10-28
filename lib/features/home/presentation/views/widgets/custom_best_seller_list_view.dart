import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';
import 'custom_best_seller_item.dart';

class CustomBestSellerListView extends StatefulWidget {
  final List<BookEntity> books;

  const CustomBestSellerListView({
    super.key,
    required this.books,
  });

  @override
  State<CustomBestSellerListView> createState() =>
      _CustomBestSellerListViewState();
}

class _CustomBestSellerListViewState extends State<CustomBestSellerListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => CustomBestSellerItem(
                imageUrl: widget.books[index].image ?? "",
                bookName: widget.books[index].title,
                bookAuthor: widget.books[index].authorName ?? "",
                bookPrice: widget.books[index].price?.toDouble()??0.8 ,
                bookRating: widget.books[index].rating?.toDouble() ?? 4.8,
              ),
          separatorBuilder: (context, index) => SizedBox(
                height: 20,
              ),
          itemCount: widget.books.length),
    );
  }
}
