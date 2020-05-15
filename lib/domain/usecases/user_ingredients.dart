import 'package:injectable/injectable.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';

@lazySingleton
class GetUserIngredients implements UseCase<List<String>> {
  final IRecipeRepository recipeRepository;

  GetUserIngredients(this.recipeRepository);

  @override
  Future<Either<Failure, List<String>>> call(Params params) {
    return Future.value(recipeRepository.retrieveUserIngredients());
  }
}

@lazySingleton
class AddIngredients implements UseCase<List<String>> {
  final IRecipeRepository recipeRepository;

  AddIngredients(this.recipeRepository);

  @override
  Future<Either<Failure, List<String>>> call(Params params) {
    return Future.value(
        recipeRepository.addIngredient((params as StringParams).string));
  }
}

@lazySingleton
class RemoveIngredients implements UseCase<List<String>> {
  final IRecipeRepository recipeRepository;

  RemoveIngredients(this.recipeRepository);

  @override
  Future<Either<Failure, List<String>>> call(Params params) {
    return Future.value(
        recipeRepository.removeIngredient((params as StringParams).string));
  }
}
