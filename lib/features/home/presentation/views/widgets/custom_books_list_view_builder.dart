import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_books_list_view.dart';

class CustomBooksListViewBuilder extends StatefulWidget {
  const CustomBooksListViewBuilder({
    super.key,
  });

  @override
  State<CustomBooksListViewBuilder> createState() =>
      _CustomBooksListViewBuilderState();
}

class _CustomBooksListViewBuilderState
    extends State<CustomBooksListViewBuilder> {
  List<BookEntity> books = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccess) {
          books.addAll(state.books);
        }
        if (state is FeaturedBooksPaginationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            (state.errorMessage),
            style: TextStyle(fontWeight: FontWeight.bold),
          )));
        }
      },
      builder: (BuildContext context, state) {
        if (state is FeaturedBooksLoading) {
          return FeaturedBooksListViewLoading();
        } else if (state is FeaturedBooksSuccess ||
            state is FeaturedBooksPaginationLoading ||
            state is FeaturedBooksPaginationFailure) {
          return CustomBooksListView(
            books: books,
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errorMessage);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
