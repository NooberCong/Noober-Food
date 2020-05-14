import 'package:dartz/dartz.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';

class GetSimilarRecipes implements UseCase<List<RecipePreview>, IdParams> {
  final IRecipeRepository recipeRepository;
  GetSimilarRecipes(this.recipeRepository);
  @override
  Future<Either<Failure, List<RecipePreview>>> call(IdParams params) {
    return recipeRepository.fetchSimilarRecipes(params.id);
  }
}
