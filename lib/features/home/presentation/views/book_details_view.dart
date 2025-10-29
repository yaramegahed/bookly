import 'package:bookly/features/home/presentation/views/widgets/books_details_body.dart';
import 'package:flutter/material.dart';
import '../../domain/entities/book_entity.dart';

class BookDetailsView extends StatelessWidget {
  final List<BookEntity> books;
  final BookEntity book;

  const BookDetailsView({
    super.key,
    required this.book, required this.books,});

  @override
  Widget build(BuildContext context) {
    final allBooks = books;
    final suggestedBooks =
    allBooks.where((b) => b.title != book.title).toList();

    return BooksDetailsBody(
      imageUrl: book.image ?? "",
      title: book.title,
      bookAuthor: book.authorName ?? "",
      price: book.price?.toDouble() ?? 0.0,
      allBooks: suggestedBooks,
    );
  }
}
