import 'package:injectable/injectable.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/user_preferences.dart';

@lazySingleton
class GetUserPreferences implements UseCase<UserPreferences> {
  final IRecipeRepository recipeRepository;

  GetUserPreferences(this.recipeRepository);
  @override
  Future<Either<Failure, UserPreferences>> call(Params params) {
    return Future.value(recipeRepository.retrieveUserPreferences());
  }
}

@lazySingleton
class SetUserPreferences implements UseCase<void> {
  final IRecipeRepository recipeRepository;

  SetUserPreferences(this.recipeRepository);
  @override
  Future<Either<Failure, UserPreferences>> call(Params params) {
    return Future.value(recipeRepository
        .setUserPreferences((params as UserPrefsParams).userPreferences));
  }
}
