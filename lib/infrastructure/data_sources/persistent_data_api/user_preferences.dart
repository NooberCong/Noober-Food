import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences.freezed.dart';
part 'user_preferences.g.dart';

@freezed
abstract class UserPreferences with _$UserPreferences {
  factory UserPreferences({
    String diet,
    List<String> cuisine,
    List<String> excludeIngredients,
    List<String> intolerances,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);
}
