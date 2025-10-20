import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
Future<List<BookEntity>> fetchFeaturesBook();
Future<List<BookEntity>> fetchNewsBook();
}