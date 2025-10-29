import 'package:bookly/core/constants.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

abstract class AppRouter {
  static const kHomeView="/homeView";
  static const kSearchView="/searchView";
  static const kBookDetailsView="/bookDetailsView";
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
        routes: <RouteBase>[
          GoRoute(
            path: kHomeView,
            builder: (BuildContext context, GoRouterState state) {
              return const HomeView();
            },
          ),
          GoRoute(
            path: kSearchView,
            builder: (BuildContext context, GoRouterState state) {
              final book=state.extra as BookEntity;

              return SearchView(books: book,);
            },
          ),
          GoRoute(
            path: kBookDetailsView,
            builder: (BuildContext context, GoRouterState state) {
              final book=state.extra as BookEntity;

              final allBooksBox = Hive.box<BookEntity>(kFeaturedBoxKey);
              final allBooks = allBooksBox.values.toList();
              final suggestedBooks = allBooks.where((b) => b.title != book.title).toList();


              return BookDetailsView(book: book, books: suggestedBooks,);
            },
          ),
        ],
      ),
    ],
  );

}