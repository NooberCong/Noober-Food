import 'package:dartz/dartz.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';

class GetSearchSuggestions implements UseCase<List<String>, KeywordParams> {
  final IRecipeRepository recipeRepository;
  GetSearchSuggestions(this.recipeRepository);
  @override
  Future<Either<Failure, List<String>>> call(KeywordParams params) {
    return recipeRepository.fetchSearchSuggestions(params.keyword);
  }
}
