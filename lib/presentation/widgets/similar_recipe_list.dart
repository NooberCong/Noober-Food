import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/dependencies_injection.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/get_similar_recipes.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';
import 'package:nooberfood/presentation/widgets/similar_recipe.dart';

class SimilarRecipeList extends StatelessWidget {
  final String recipeId;
  const SimilarRecipeList({Key key, @required this.recipeId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 10),
        const Text(
          "You may also like",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: FutureBuilder(
            future: GetSimilarRecipes(getIt<IRecipeRepository>())
                .call(Params.stringParams(recipeId)),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                return (snapshot.data as Either<Failure, List<RecipePreview>>)
                    .fold(
                  (failure) => Center(
                    child: Text(
                      messageFromFailure(
                        failure,
                      ),
                      style: TextStyle(
                        color: Theme.of(context).errorColor,
                      ),
                    ),
                  ),
                  (data) => ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final model = data[index];
                      return SimilarRecipe(model: model);
                    },
                    itemCount: data.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(width: 20),
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: .5,
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
