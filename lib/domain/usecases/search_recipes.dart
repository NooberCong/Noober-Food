import 'package:dartz/dartz.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';

class SearchRecipes implements UseCase<List<RecipePreview>, KeywordParams> {
  final IRecipeRepository recipeRepository;
  SearchRecipes(this.recipeRepository);
  @override
  Future<Either<Failure, List<RecipePreview>>> call(KeywordParams params) {
    return recipeRepository.searchRecipes(params.keyword);
  }
}
