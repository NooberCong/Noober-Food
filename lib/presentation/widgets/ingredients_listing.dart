import 'package:flutter/material.dart';
import 'package:nooberfood/domain/data_structures/ingredient.dart';

class IngredientsListing extends StatelessWidget {
  const IngredientsListing(
      {Key key,
      @required this.ingredients,
      @required this.title,
      @required this.icon})
      : super(key: key);

  final String title;
  final List<Ingredient> ingredients;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
          ...ingredients
              .map((entry) => ListTile(
                    title: Text(entry.name),
                    leading: icon,
                  ))
              .toList()
        ],
      ),
    );
  }
}
