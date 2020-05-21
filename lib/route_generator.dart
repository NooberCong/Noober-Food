import 'package:flutter/material.dart';
import 'package:nooberfood/presentation/pages/ingredient_recipe_page.dart';
import 'package:nooberfood/presentation/pages/preferences_page.dart';
import 'package:nooberfood/presentation/pages/recipe_information_page.dart';
import 'package:nooberfood/presentation/pages/search_page.dart';

Route generateRoute(RouteSettings settings) {
  return MaterialPageRoute(builder: (context) {
    switch (settings.name) {
      case "/information":
        return RecipeInformationPage(
            idOrData: (settings.arguments as Map<String, dynamic>)["idOrData"]);
      case "/search":
        return const SearchPage();
      case "/preferences":
        return const PreferencesPage();
      case "/recipesuggestions":
        return const IngredientBasedRecipePage();
      default:
        return const SizedBox();
    }
  });
}
