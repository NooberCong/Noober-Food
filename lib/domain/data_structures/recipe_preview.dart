import 'package:flutter/foundation.dart';
import 'package:nooberfood/domain/data_structures/i_recipe.dart';

class RecipePreview extends IRecipe {
  final String title;
  final String imageUrl;
  final int id;
  RecipePreview({
    @required this.title,
    @required this.id,
    @required this.imageUrl,
  });
  @override
  List<Object> get props => [title, id, imageUrl];
}
