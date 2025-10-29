import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';
import '../../manger/newest_books_cubit/new_books_cubit.dart';
import 'custom_best_seller_list_view.dart';

class CustomBestSellerListViewBuilder extends StatefulWidget {
  const CustomBestSellerListViewBuilder({
    super.key,
  });

  @override
  State<CustomBestSellerListViewBuilder> createState() =>
      _CustomBestSellerListViewBuilderState();
}

class _CustomBestSellerListViewBuilderState
    extends State<CustomBestSellerListViewBuilder> {
  List<BookEntity> books = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewBooksCubit, NewBooksState>(
      builder: (BuildContext context, state) {
        if (state is NewBooksSuccess) {
          return CustomBestSellerListView(
            books: books,
          );
        } else if (state is NewBooksFailure) {
          return Text(state.errorMessage);
        }
        return Center(child: CircularProgressIndicator());
      },
      listener: (context, state) {
        if (state is NewBooksSuccess) {
          books = state.books;
        }
        if (state is NewBooksFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            (state.errorMessage),
            style: TextStyle(fontWeight: FontWeight.bold),
          )));
        }
      },
    );
  }
}
