import 'package:flutter/material.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:transparent_image/transparent_image.dart';

class SimilarRecipe extends StatelessWidget {
  const SimilarRecipe({
    Key key,
    @required this.model,
  }) : super(key: key);

  final RecipePreview model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).popAndPushNamed("/information",
            arguments: {"idOrData": model.id.toString()});
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
              width: 150,
              child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage, image: model.imageUrl),
            ),
            Container(
              height: 50,
              width: 150,
              color: Colors.white,
              padding: const EdgeInsets.all(5),
              child: Text(
                model.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
