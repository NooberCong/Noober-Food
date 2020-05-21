import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:nooberfood/core/errors/errors.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/i_persistent_data_api.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/user_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String userPrefsKey = "USER_PREFS";
const String ingredientsKey = "INGREDIENTS";
const Map<String, dynamic> defaultUserPref = {
  "cuisine": [],
  "excludeIngredients": [],
  "intolerances": [],
};
List<String> defaultIngredients() => [];

@RegisterAs(IPersistentDataApi)
@lazySingleton
class SharedPreferencesDataApi implements IPersistentDataApi {
  final SharedPreferences sharedPreferences;
  SharedPreferencesDataApi({@required this.sharedPreferences});
  @override
  List<String> getUserIngredients() {
    return sharedPreferences.getStringList(ingredientsKey) ??
        defaultIngredients();
  }

  @override
  UserPreferences getUserPreferences() {
    final persistedUserPreferences = sharedPreferences.getString(userPrefsKey);
    if (persistedUserPreferences != null) {
      return UserPreferences.fromJson(
          json.decode(persistedUserPreferences) as Map<String, dynamic>);
    } else {
      return UserPreferences.fromJson(defaultUserPref);
    }
  }

  @override
  List<String> addIngredient({String ingredient}) {
    final persistedIngredients = getUserIngredients();
    if (persistedIngredients.contains(ingredient)) {
      throw IngredientAlreadyAddedException();
    }
    persistedIngredients.add(ingredient);
    sharedPreferences.setStringList(ingredientsKey, persistedIngredients);
    return persistedIngredients;
  }

  @override
  List<String> removeIngredient({@required String ingredient}) {
    final persistedIngredients = getUserIngredients();
    if (persistedIngredients.contains(ingredient) == false) {
      throw IngredientNotExistException();
    }
    persistedIngredients.remove(ingredient);
    sharedPreferences.setStringList(ingredientsKey, persistedIngredients);
    return persistedIngredients;
  }

  @override
  UserPreferences setUserPreferences(
      {@required UserPreferences userPreferences}) {
    sharedPreferences.setString(
        userPrefsKey, json.encode(userPreferences.toJson()));
    return userPreferences;
  }
}
