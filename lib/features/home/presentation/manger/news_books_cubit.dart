import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/useCases/fetch_news_books_use_case.dart';
import 'package:meta/meta.dart';

part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  NewsBooksCubit(this.fetchNewsBooksUseCase) : super(NewsBooksInitial());
  final FetchNewsBooksUseCase fetchNewsBooksUseCase;

  Future<void> fetchNewsBooks() async {
    emit(NewsBooksLoading());
    var result = await fetchNewsBooksUseCase.call();
    result.fold((failure) {
      emit(NewsBooksFailure(failure.message));
    }, (books) {
      emit(NewsBooksSuccess(books));
    });
  }
}
