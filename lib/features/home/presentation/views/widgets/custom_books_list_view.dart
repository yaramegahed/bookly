import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBooksListView extends StatefulWidget {
  const CustomBooksListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  State<CustomBooksListView> createState() => _CustomBooksListViewState();
}

class _CustomBooksListViewState extends State<CustomBooksListView> {
  final ScrollController _scrollController = ScrollController();
  var nextPage = 1;
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(scrollController);
  // _scrollController.removeListener(scrollController);
  }

  void scrollController() async {
    var maxScroll = _scrollController.position.maxScrollExtent;
    var currentScroll = _scrollController.position.pixels;
    if (currentScroll >= .7 * maxScroll && !isLoading) {
      isLoading = true;
      await BlocProvider.of<FeaturedBooksCubit>(context)
          .fetchFeaturedBooks(pageNumber: nextPage++);
      isLoading = false;
      if (kDebugMode) {
        print('Load more books');
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: SizedBox(
        height: 224,
        child: ListView.separated(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CustomBookContainer(
                  imageUrl: widget.books[index].image ?? "",
                ),
            separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
            itemCount: widget.books.length),
      ),
    );
  }
}
