// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserPreferences _$_$_UserPreferencesFromJson(Map<String, dynamic> json) {
  return _$_UserPreferences(
    diet: json['diet'] as String,
    cuisine: (json['cuisine'] as List)?.map((e) => e as String)?.toList(),
    intolerances:
        (json['intolerances'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_UserPreferencesToJson(_$_UserPreferences instance) =>
    <String, dynamic>{
      'diet': instance.diet,
      'cuisine': instance.cuisine,
      'intolerances': instance.intolerances,
    };
