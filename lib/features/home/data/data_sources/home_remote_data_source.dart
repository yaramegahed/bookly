import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';

import '../models/book_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturesBook();

  Future<List<BookEntity>> fetchNewsBook();
}

class HomeRemoteDataSourceImplementation implements HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImplementation(this.apiServices);

  @override
  Future<List<BookEntity>> fetchFeaturesBook() async {
    var date = await apiServices.get(
        endPoint: "volumes?q=programming&Filtering=free-ebooks");
    List<BookEntity> books = getBooksList(date);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewsBook() async {
    var date = await apiServices.get(
        endPoint: "volumes?q=programming&Filtering=free-ebooks&sorting=newest");
    List<BookEntity> books = getBooksList(date);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> date) {
    List<BookEntity> books = [];
    for (var bookMap in date['items']) {
      books.add(Item.fromJson(bookMap));
    }
    return books;
  }
}
