import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/booking_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_container.dart';
import 'package:flutter/material.dart';
import 'button_action.dart';
import 'custom_details_app_bar.dart';
import 'custom_details_list_view.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({super.key});

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
                CustomBookContainer(imageUrl: '',),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "The Jungle Book",
                  style: Styles.textStyle30,
                ),
                Text(
                  "Rudyard Kipling",
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
                ButtonAction(),
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
                CustomDetailsListView()
              ],
            ),
          ),
        )
      ],
    ));
  }
}
