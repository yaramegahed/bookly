import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/booking_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_container.dart';
import 'package:flutter/material.dart';
import '../../../domain/entities/book_entity.dart';
import 'button_action.dart';
import 'custom_details_app_bar.dart';
import 'custom_details_list_view.dart';

class BooksDetailsBody extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String bookAuthor;
  final double price;
  final List<BookEntity> allBooks;

  const BooksDetailsBody(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.bookAuthor,
      required this.price,
      required this.allBooks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomDetailsAppBar(),
                SizedBox(
                  height: 34,
                ),
                CustomBookContainer(
                  imageUrl: imageUrl,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  textAlign: TextAlign.center,
                  title,
                  style: Styles.textStyle20b,
                ),
                Text(
                  bookAuthor,
                  style:
                      Styles.textStyle18m.copyWith(fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BookingRating(),
                  ],
                ),
                SizedBox(
                  height: 37,
                ),
                ButtonAction(
                  price: price,
                ),
                SizedBox(
                  height: 49,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("You can also like", style: Styles.textStyle16m),
                ),
                SizedBox(
                  height: 16,
                ),
                CustomDetailsListView(
                  books: allBooks.where((b) => b.title != title).toList(),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
