import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/search/presentation/views/widget/custom_search_text_field.dart';
import 'package:flutter/material.dart';

import 'custom_search_result_list.dart';

class SearchViewBody extends StatelessWidget {
  final BookEntity books;
  const SearchViewBody({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchTextField(),
            SizedBox(height: 10,),
            Text("results :",style: Styles.textStyle20b,),
            CustomSearchResultList(books: books,),
          ],
        ),
      ),
    );
  }
}

