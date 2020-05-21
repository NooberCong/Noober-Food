import 'package:flutter/material.dart';

class StarsRating extends StatelessWidget {
  final double score;
  const StarsRating({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final activeStars = score ~/ 20;
    return Row(
      children: List.generate(
        5,
        (index) => Icon(
          Icons.star,
          size: 25,
          color: _colorsFromScore(index, activeStars),
        ),
      ),
    );
  }

  MaterialColor _colorsFromScore(int index, int activeStars) =>
      index <= activeStars ? Colors.yellow : Colors.grey;
}
