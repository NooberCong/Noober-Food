import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';

@lazySingleton
class GetRecipeInformation implements UseCase<RecipeInformation> {
  final IRecipeRepository recipeRepository;
  GetRecipeInformation(this.recipeRepository);
  @override
  Future<Either<Failure, RecipeInformation>> call(Params params) {
    return recipeRepository
        .fetchRecipeInformation((params as StringParams).string);
  }
}
