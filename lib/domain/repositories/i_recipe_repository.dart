import 'package:dartz/dartz.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/i_recipe.dart';

abstract class IRecipeRepository {
  Future<Either<Failure, List<IRecipe>>> fetchRandomRecipes();
  Future<Either<Failure, List<IRecipe>>> searchRecipes();
  Future<Either<Failure, List<IRecipe>>> fetchSimilarRecipes();
  Future<Either<Failure, IRecipe>> fetchRecipeInformation();
  Future<Either<Failure, List<String>>> fetchSearchSuggestions();
  Future<Either<Failure, List<IRecipe>>> fetchRecipesBasedOnIngredients(
      List<String> ingredients);
}
