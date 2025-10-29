import 'package:bookly/features/search/presentation/views/widget/search_view_body.dart';
import 'package:flutter/material.dart';

import '../../../home/domain/entities/book_entity.dart';

class SearchView extends StatelessWidget {
  final BookEntity books;

  const SearchView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return  SearchViewBody(books: books,);
  }
}
