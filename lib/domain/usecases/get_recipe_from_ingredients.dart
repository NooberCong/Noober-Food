import 'package:nooberfood/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:nooberfood/domain/data_structures/ingredient_based_recipe_preview.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';

class GetRecipeFromIngredients
    implements UseCase<List<IngredientBasedRecipePreview>> {
  final IRecipeRepository repository;

  GetRecipeFromIngredients(this.repository);
  @override
  Future<Either<Failure, List<IngredientBasedRecipePreview>>> call(
      Params params) {
    return repository.fetchRecipesBasedOnIngredients();
  }
}
