// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserPreferences _$UserPreferencesFromJson(Map<String, dynamic> json) {
  return _UserPreferences.fromJson(json);
}

class _$UserPreferencesTearOff {
  const _$UserPreferencesTearOff();

  _UserPreferences call(
      {String diet, List<String> cuisine, List<String> intolerances}) {
    return _UserPreferences(
      diet: diet,
      cuisine: cuisine,
      intolerances: intolerances,
    );
  }
}

// ignore: unused_element
const $UserPreferences = _$UserPreferencesTearOff();

mixin _$UserPreferences {
  String get diet;
  List<String> get cuisine;
  List<String> get intolerances;

  Map<String, dynamic> toJson();
  $UserPreferencesCopyWith<UserPreferences> get copyWith;
}

abstract class $UserPreferencesCopyWith<$Res> {
  factory $UserPreferencesCopyWith(
          UserPreferences value, $Res Function(UserPreferences) then) =
      _$UserPreferencesCopyWithImpl<$Res>;
  $Res call({String diet, List<String> cuisine, List<String> intolerances});
}

class _$UserPreferencesCopyWithImpl<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  _$UserPreferencesCopyWithImpl(this._value, this._then);

  final UserPreferences _value;
  // ignore: unused_field
  final $Res Function(UserPreferences) _then;

  @override
  $Res call({
    Object diet = freezed,
    Object cuisine = freezed,
    Object intolerances = freezed,
  }) {
    return _then(_value.copyWith(
      diet: diet == freezed ? _value.diet : diet as String,
      cuisine: cuisine == freezed ? _value.cuisine : cuisine as List<String>,
      intolerances: intolerances == freezed
          ? _value.intolerances
          : intolerances as List<String>,
    ));
  }
}

abstract class _$UserPreferencesCopyWith<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  factory _$UserPreferencesCopyWith(
          _UserPreferences value, $Res Function(_UserPreferences) then) =
      __$UserPreferencesCopyWithImpl<$Res>;
  @override
  $Res call({String diet, List<String> cuisine, List<String> intolerances});
}

class __$UserPreferencesCopyWithImpl<$Res>
    extends _$UserPreferencesCopyWithImpl<$Res>
    implements _$UserPreferencesCopyWith<$Res> {
  __$UserPreferencesCopyWithImpl(
      _UserPreferences _value, $Res Function(_UserPreferences) _then)
      : super(_value, (v) => _then(v as _UserPreferences));

  @override
  _UserPreferences get _value => super._value as _UserPreferences;

  @override
  $Res call({
    Object diet = freezed,
    Object cuisine = freezed,
    Object intolerances = freezed,
  }) {
    return _then(_UserPreferences(
      diet: diet == freezed ? _value.diet : diet as String,
      cuisine: cuisine == freezed ? _value.cuisine : cuisine as List<String>,
      intolerances: intolerances == freezed
          ? _value.intolerances
          : intolerances as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_UserPreferences implements _UserPreferences {
  _$_UserPreferences({this.diet, this.cuisine, this.intolerances});

  factory _$_UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$_$_UserPreferencesFromJson(json);

  @override
  final String diet;
  @override
  final List<String> cuisine;
  @override
  final List<String> intolerances;

  @override
  String toString() {
    return 'UserPreferences(diet: $diet, cuisine: $cuisine, intolerances: $intolerances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserPreferences &&
            (identical(other.diet, diet) ||
                const DeepCollectionEquality().equals(other.diet, diet)) &&
            (identical(other.cuisine, cuisine) ||
                const DeepCollectionEquality()
                    .equals(other.cuisine, cuisine)) &&
            (identical(other.intolerances, intolerances) ||
                const DeepCollectionEquality()
                    .equals(other.intolerances, intolerances)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(diet) ^
      const DeepCollectionEquality().hash(cuisine) ^
      const DeepCollectionEquality().hash(intolerances);

  @override
  _$UserPreferencesCopyWith<_UserPreferences> get copyWith =>
      __$UserPreferencesCopyWithImpl<_UserPreferences>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserPreferencesToJson(this);
  }
}

abstract class _UserPreferences implements UserPreferences {
  factory _UserPreferences(
      {String diet,
      List<String> cuisine,
      List<String> intolerances}) = _$_UserPreferences;

  factory _UserPreferences.fromJson(Map<String, dynamic> json) =
      _$_UserPreferences.fromJson;

  @override
  String get diet;
  @override
  List<String> get cuisine;
  @override
  List<String> get intolerances;
  @override
  _$UserPreferencesCopyWith<_UserPreferences> get copyWith;
}
