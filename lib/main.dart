import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/simple_bloc_observer.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/useCases/fetch_features_books_use_case.dart';
import 'package:bookly/features/home/domain/useCases/fetch_news_books_use_case.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manger/news_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/utils/functions/set_up_service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  setUpServiceLocator();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBoxKey);
  await Hive.openBox(kNewsBoxKey);
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
                FetchFeaturesBooksUseCase(getIt.get<HomeRepoImplementation>()));
          },
        ),
        BlocProvider(
          create: (context) {
            return NewsBooksCubit(
                FetchNewsBooksUseCase(getIt.get<HomeRepoImplementation>()));
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
