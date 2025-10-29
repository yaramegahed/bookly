part of 'new_books_cubit.dart';

@immutable
abstract class NewBooksState {}

class NewBooksInitial extends NewBooksState {}

class NewBooksLoading extends NewBooksState {}

class NewBooksSuccess extends NewBooksState {
  final List<BookEntity> books;

  NewBooksSuccess(this.books);
}

class NewBooksFailure extends NewBooksState {
  final String errorMessage;

  NewBooksFailure(this.errorMessage);
}

class FeaturedBooksPaginationLoading extends NewBooksState {}

class FeaturedBooksPaginationFailure extends NewBooksState {
  final String errorMessage;

  FeaturedBooksPaginationFailure(this.errorMessage);
}

