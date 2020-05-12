import 'package:nooberfood/domain/entites/i_recipe.dart';
import 'package:flutter/foundation.dart';

class Instruction extends IRecipe {
  final int number;
  final String description;

  Instruction({
    @required this.number,
    @required this.description,
  });
  @override
  List<Object> get props => [number, description];
}
