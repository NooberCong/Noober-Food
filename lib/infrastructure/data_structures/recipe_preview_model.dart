import 'package:flutter/foundation.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';

class RecipePreviewModel extends RecipePreview {
  RecipePreviewModel({@required String title, @required String id})
      : assert(title != null),
        assert(id != null),
        super(
            id: id,
            title: title,
            imageUrl: "https://spoonacular.com/recipeImages/$id-636x393.jpg");
  factory RecipePreviewModel.fromJson(Map<String, dynamic> json) {
    return RecipePreviewModel(
      id: json["id"] as String,
      title: json["title"] as String,
    );
  }
}
