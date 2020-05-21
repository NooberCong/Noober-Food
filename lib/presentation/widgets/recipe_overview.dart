import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/dependencies_injection.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/get_similar_recipes.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';
import 'package:nooberfood/presentation/widgets/similar_recipe.dart';
import 'package:nooberfood/presentation/widgets/tag.dart';

class RecipeOverview extends StatelessWidget {
  final RecipeInformation data;
  const RecipeOverview({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Html(
            data: data.summary,
            defaultTextStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            children: <Widget>[
              Tag(
                title: "Vegetarian",
                show: data.vegetarian,
              ),
              Tag(
                title: "Gluten Free",
                show: data.glutenFree,
              ),
              Tag(
                title: "Dairy Free",
                show: data.dairyFree,
              ),
              Tag(
                title: "Cheap",
                show: data.cheap,
              ),
            ],
          ),
          SimilarRecipeList(
            recipeId: data.id.toString(),
          ),
        ],
      ),
    );
  }
}

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
          "Similar Recipes",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        FutureBuilder(
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
                (data) => SizedBox(
                  height: 150,
                  child: ListView.separated(
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
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ],
    );
  }
}
