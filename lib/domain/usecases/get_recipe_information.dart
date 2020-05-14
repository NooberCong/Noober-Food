import 'package:dartz/dartz.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';

class GetRecipeInformation implements UseCase<RecipeInformation, IdParams> {
  final IRecipeRepository recipeRepository;
  GetRecipeInformation(this.recipeRepository);
  @override
  Future<Either<Failure, RecipeInformation>> call(IdParams params) {
    return recipeRepository.fetchRecipeInformation(params.id);
  }
}
