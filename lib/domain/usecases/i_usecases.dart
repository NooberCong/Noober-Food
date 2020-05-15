import 'package:dartz/dartz.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/user_preferences.dart';

part 'i_usecases.freezed.dart';

@freezed
@immutable
abstract class Params with _$Params {
  factory Params.noParams() = NoParams;
  factory Params.stringListParams(List<String> list) = StringListParams;
  factory Params.stringParams(String string) = StringParams;
  factory Params.ingredientsParams(List<String> ingredients) =
      IngredientsParams;
  factory Params.userPrefsParams(UserPreferences userPreferences) =
      UserPrefsParams;
}

abstract class UseCase<T> {
  Future<Either<Failure, T>> call(Params params);
}
