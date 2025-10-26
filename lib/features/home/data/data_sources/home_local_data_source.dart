import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

import '../../../../core/constants.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();

  List<BookEntity> fetchNewsBooks();
}

class HomeLocalDataSourceImplementation implements HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBoxKey);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewsBooks() {
    var box = Hive.box<BookEntity>(kNewsBoxKey);
    return box.values.toList();
  }
}
