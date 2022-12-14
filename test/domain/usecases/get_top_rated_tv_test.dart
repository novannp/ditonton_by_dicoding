import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/entities/tv.dart';
import 'package:ditonton/domain/usecases/get_top_rated_tv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetTopRatedTv usecase;
  late MockTvRepository mockTvRepository;

  setUp(() {
    mockTvRepository = MockTvRepository();
    usecase = GetTopRatedTv(mockTvRepository);
  });
  final tTv = <Tv>[];
  test('should get popular tv', () async {
    when(mockTvRepository.getTopRatedTv()).thenAnswer((_) async => Right(tTv));
    final result = await usecase.execute();
    expect(result, Right(tTv));
  });
}
