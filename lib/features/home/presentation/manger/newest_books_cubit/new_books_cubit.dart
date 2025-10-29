import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/useCases/fetch_new_books_use_case.dart';
import 'package:meta/meta.dart';

part 'new_books_state.dart';

class NewBooksCubit extends Cubit<NewBooksState> {
  final FetchNewBooksUseCase fetchNewBooksUseCase;
  int pageNumber = 0;
  List<BookEntity> books = [];

  NewBooksCubit(this.fetchNewBooksUseCase) : super(NewBooksInitial());

  Future<void> fetchNewBooks() async {
    emit(NewBooksLoading());
    final result = await fetchNewBooksUseCase(pageNumber);
    result.fold(
          (failure) => emit(NewBooksFailure(failure.message)),
          (newBooks) {
        books.addAll(newBooks);
        pageNumber++;
        emit(NewBooksSuccess(books));
      },
    );
  }
}

