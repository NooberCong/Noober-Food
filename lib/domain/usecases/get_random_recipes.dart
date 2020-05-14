import 'package:dartz/dartz.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';

class GetRandomRecipes
    implements UseCase<List<RecipeInformation>, RandomParams> {
  final IRecipeRepository recipeRepository;
  GetRandomRecipes(this.recipeRepository);
  @override
  Future<Either<Failure, List<RecipeInformation>>> call(
      RandomParams params) {
    return recipeRepository.fetchRandomRecipes(params.tags);
  }
}
