import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/dependencies_injection.dart';
import 'package:nooberfood/domain/data_structures/ingredient_based_recipe_preview.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/get_recipe_from_ingredients.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';
import 'package:nooberfood/presentation/widgets/ingredients_listing.dart';
import 'package:transparent_image/transparent_image.dart';

class IngredientBasedRecipePage extends StatelessWidget {
  const IngredientBasedRecipePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Recipe Suggestions",
            style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: _recipesFromIngredientsFuture(),
          builder: _buildFuture,
        ),
      ),
    );
  }

  Widget _buildFuture(BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    if (snapshot.hasData) {
      final failureOrData =
          snapshot.data as Either<Failure, List<IngredientBasedRecipePreview>>;
      return failureOrData.fold(
          (failure) => Center(
                child: Text(messageFromFailure(failure)),
              ),
          (data) => ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final model = data[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/information",
                        arguments: {"idOrData": model.id.toString()});
                  },
                  child: RecipeIngredientCard(model: model),
                );
              },
              itemCount: data.length));
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  Future<Either<Failure, List<IngredientBasedRecipePreview>>>
      _recipesFromIngredientsFuture() {
    return GetRecipeFromIngredients(getIt<IRecipeRepository>())
        .call(Params.noParams());
  }
}

class RecipeIngredientCard extends StatelessWidget {
  const RecipeIngredientCard({
    Key key,
    @required this.model,
  }) : super(key: key);

  final IngredientBasedRecipePreview model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.width / 16 * 9,
              child: FadeInImage.memoryNetwork(
                  fit: BoxFit.fill,
                  placeholder: kTransparentImage,
                  image: model.imageUrl),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Text(
                    model.title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      IngredientsListing(
                        ingredients: model.usedIngredients,
                        title: "Used ingredients",
                        icon: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      ),
                      IngredientsListing(
                        ingredients: model.missingIngredients,
                        title: "Missing ingredients",
                        icon: Icon(
                          Icons.remove,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
