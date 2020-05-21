import 'package:flutter/material.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:transparent_image/transparent_image.dart';

class RecipePreviewCard extends StatelessWidget {
  const RecipePreviewCard({
    Key key,
    @required this.recipePreview,
  }) : super(key: key);

  final RecipePreview recipePreview;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed("/information",
          arguments: {"idOrData": recipePreview.id.toString()}),
      child: Container(
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: SizedBox(
                height: 100,
                width: 100,
                child: FadeInImage.memoryNetwork(
                    fit: BoxFit.cover,
                    placeholder: kTransparentImage,
                    image: recipePreview.imageUrl),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(recipePreview.title),
            ),
          ],
        ),
      ),
    );
  }
}
