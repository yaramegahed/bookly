import 'package:bookly/features/search/presentation/views/widget/custom_search_text_field.dart';
import 'package:flutter/material.dart';

import 'custom_search_result_list.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
        child: Column(
          children: [
            CustomSearchTextField(),
            CustomSearchResultList(),
          ],
        ),
      ),
    );
  }
}

