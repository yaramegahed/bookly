import 'package:bookly/features/home/domain/useCases/use_case.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/book_entity.dart';
import '../repos/home_repo.dart';

class FetchFeaturesBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetchFeaturesBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    return await homeRepo.fetchFeaturesBook();
  }
}

