import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturesBook();
  Future<List<BookEntity>> fetchNewsBook();
}
class HomeRemoteDataSourceImplementation implements HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> fetchFeaturesBook() {
    // TODO: implement fetchFeaturesBook
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewsBook() {
    // TODO: implement fetchNewsBook
    throw UnimplementedError();
  }
  }
