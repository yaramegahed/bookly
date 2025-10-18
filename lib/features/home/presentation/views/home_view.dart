import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            CustomBooksListView(),
            SizedBox(
              height: 49,
            ),
            Text(
              "Best Seller",
              style: Styles.textStyle20sb,
            ),
            SizedBox(height: 20,),
            CustomBestSellerListView()
          ],
        ),
      ),
    );
  }
}

