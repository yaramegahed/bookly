import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

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
              return const SearchView();
            },
          ),
          GoRoute(
            path: kBookDetailsView,
            builder: (BuildContext context, GoRouterState state) {
              return const BookDetailsView();
            },
          ),
        ],
      ),
    ],
  );

}