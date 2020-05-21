import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/presentation/widgets/similar_recipe_list.dart';
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
