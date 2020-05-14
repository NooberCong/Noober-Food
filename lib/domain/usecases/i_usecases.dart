import 'package:dartz/dartz.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_usecases.freezed.dart';

@freezed
@immutable
abstract class Params with _$Params {
  factory Params.noParams() = NoParams;
  factory Params.tagsRequestParams(List<String> tags) = RandomParams;
  factory Params.keywordParams(String keyword) = KeywordParams;
  factory Params.idParams(String id) = IdParams;
  factory Params.ingredientsParams(List<String> ingredients) = IngredientsParams;
}


abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call(P params);
}

