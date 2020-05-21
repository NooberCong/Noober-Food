import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/presentation/widgets/stars_rating.dart';
import 'package:transparent_image/transparent_image.dart';

class RandomRecipeCard extends StatelessWidget {
  final RecipeInformation data;

  const RandomRecipeCard({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(context),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: (MediaQuery.of(context).size.width - 40) / 16 * 9,
              child: Hero(
                tag: data.imageUrl,
                child: FadeInImage.memoryNetwork(
                    fit: BoxFit.fill,
                    placeholder: kTransparentImage,
                    image: data.imageUrl),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data.title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.clock,
                            size: 25,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "${data.readyInMinutes} minutes",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Rating: ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          StarsRating(
                            score: data.score,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    Navigator.of(context)
        .pushNamed("/information", arguments: {"idOrData": data});
  }
}
