import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

import '../../../../core/constants.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0});

  List<BookEntity> fetchNewBooks({int pageNumber = 0});
}

class HomeLocalDataSourceImplementation implements HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0}) {
    int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;
    var box = Hive.box<BookEntity>(kFeaturedBoxKey);
    int length = box.values.length;
    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return box.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<BookEntity> fetchNewBooks({int pageNumber = 0}) {
    int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;
    var box = Hive.box<BookEntity>(kNewBoxKey);
    int length = box.values.length;

    if (startIndex >= length) {
      return [];
    }
    if (endIndex > length) {
      endIndex = length;
    }

    return box.values.toList().sublist(startIndex, endIndex);
  }
}
