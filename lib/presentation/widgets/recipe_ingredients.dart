import 'package:flutter/material.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:transparent_image/transparent_image.dart';

class RecipeIngredients extends StatelessWidget {
  final RecipeInformation data;
  const RecipeIngredients({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
          children: data.ingredients
              .map(
                (entry) => Row(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image: entry.imageUrl),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        entry.description,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              )
              .toList()),
    );
  }
}
