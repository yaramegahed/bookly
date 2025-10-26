import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/useCases/fetch_features_books_use_case.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/book_entity.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fetchFeaturesBooksUseCase)
      : super(FeaturedBooksInitial());
  final FetchFeaturesBooksUseCase fetchFeaturesBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await fetchFeaturesBooksUseCase.call();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.message));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
