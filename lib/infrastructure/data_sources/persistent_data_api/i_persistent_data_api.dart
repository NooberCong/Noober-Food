import 'package:flutter/foundation.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/user_preferences.dart';

abstract class IPersistentDataApi {
  List<String> getUserIngredients();
  UserPreferences getUserPreferences();
  List<String> addIngredient({@required String ingredient});
  List<String> removeIngredient({@required String ingredient});
  UserPreferences setUserPreferences({@required UserPreferences userPreferences});
}
