import 'package:flutter/foundation.dart';
import 'package:nooberfood/domain/data_structures/i_recipe.dart';

class RecipePreview extends IRecipe {
  final String title;
  final String id;
  final String imageUrl;
  RecipePreview({@required this.title, @required this.id})
      : assert(title != null),
        assert(id != null),
        imageUrl = "https://spoonacular.com/recipeImages/$id-556x370.jpg";
  @override
  List<Object> get props => [title, id, imageUrl];
}
