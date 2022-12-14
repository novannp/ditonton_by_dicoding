import 'package:dartz/dartz.dart';

import '../../common/failure.dart';
import '../entities/tv.dart';
import '../repositories/tv_repository.dart';

class GetTvRecomendation {
  final TvRepository repository;

  GetTvRecomendation(this.repository);

  Future<Either<Failure, List<Tv>>> execute(int id) async {
    return await repository.getTvRecommended(id);
  }
}
