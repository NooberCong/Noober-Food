import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';

@lazySingleton
class GetRandomRecipes implements UseCase<List<RecipeInformation>> {
  final IRecipeRepository recipeRepository;
  GetRandomRecipes(this.recipeRepository);
  @override
  Future<Either<Failure, List<RecipeInformation>>> call(Params params) {
    return recipeRepository
        .fetchRandomRecipes((params as StringListParams).list);
  }
}
