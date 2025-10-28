import 'package:bookly/features/home/presentation/manger/news_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';
import 'custom_best_seller_list_view.dart';
import 'featured_books_list_view_loading.dart';

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
    return BlocConsumer<NewsBooksCubit, NewsBooksState>(
      builder: (BuildContext context, state) {
        if (state is NewsBooksSuccess) {
          return CustomBestSellerListView(
            books: books,
          );
        } else if (state is NewsBooksFailure) {
          return Text(state.errorMessage);
        }
        return Center(child: CircularProgressIndicator());
      },
      listener: (context, state) {
        if (state is NewsBooksSuccess) {
          books = state.books;
        }
        if (state is NewsBooksFailure) {
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
