import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';

@lazySingleton
class GetSearchSuggestions implements UseCase<List<String>> {
  final IRecipeRepository recipeRepository;
  GetSearchSuggestions(this.recipeRepository);
  @override
  Future<Either<Failure, List<String>>> call(Params params) {
    return recipeRepository
        .fetchSearchSuggestions((params as StringParams).string);
  }
}
