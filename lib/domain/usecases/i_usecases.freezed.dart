// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'i_usecases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ParamsTearOff {
  const _$ParamsTearOff();

  NoParams noParams() {
    return NoParams();
  }

  StringListParams stringListParams(List<String> list) {
    return StringListParams(
      list,
    );
  }

  StringParams stringParams(String string) {
    return StringParams(
      string,
    );
  }

  IngredientsParams ingredientsParams(List<String> ingredients) {
    return IngredientsParams(
      ingredients,
    );
  }

  UserPrefsParams userPrefsParams(UserPreferences userPreferences) {
    return UserPrefsParams(
      userPreferences,
    );
  }
}

// ignore: unused_element
const $Params = _$ParamsTearOff();

mixin _$Params {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noParams(),
    @required Result stringListParams(List<String> list),
    @required Result stringParams(String string),
    @required Result ingredientsParams(List<String> ingredients),
    @required Result userPrefsParams(UserPreferences userPreferences),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noParams(),
    Result stringListParams(List<String> list),
    Result stringParams(String string),
    Result ingredientsParams(List<String> ingredients),
    Result userPrefsParams(UserPreferences userPreferences),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noParams(NoParams value),
    @required Result stringListParams(StringListParams value),
    @required Result stringParams(StringParams value),
    @required Result ingredientsParams(IngredientsParams value),
    @required Result userPrefsParams(UserPrefsParams value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noParams(NoParams value),
    Result stringListParams(StringListParams value),
    Result stringParams(StringParams value),
    Result ingredientsParams(IngredientsParams value),
    Result userPrefsParams(UserPrefsParams value),
    @required Result orElse(),
  });
}

abstract class $ParamsCopyWith<$Res> {
  factory $ParamsCopyWith(Params value, $Res Function(Params) then) =
      _$ParamsCopyWithImpl<$Res>;
}

class _$ParamsCopyWithImpl<$Res> implements $ParamsCopyWith<$Res> {
  _$ParamsCopyWithImpl(this._value, this._then);

  final Params _value;
  // ignore: unused_field
  final $Res Function(Params) _then;
}

abstract class $NoParamsCopyWith<$Res> {
  factory $NoParamsCopyWith(NoParams value, $Res Function(NoParams) then) =
      _$NoParamsCopyWithImpl<$Res>;
}

class _$NoParamsCopyWithImpl<$Res> extends _$ParamsCopyWithImpl<$Res>
    implements $NoParamsCopyWith<$Res> {
  _$NoParamsCopyWithImpl(NoParams _value, $Res Function(NoParams) _then)
      : super(_value, (v) => _then(v as NoParams));

  @override
  NoParams get _value => super._value as NoParams;
}

class _$NoParams implements NoParams {
  _$NoParams();

  @override
  String toString() {
    return 'Params.noParams()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoParams);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noParams(),
    @required Result stringListParams(List<String> list),
    @required Result stringParams(String string),
    @required Result ingredientsParams(List<String> ingredients),
    @required Result userPrefsParams(UserPreferences userPreferences),
  }) {
    assert(noParams != null);
    assert(stringListParams != null);
    assert(stringParams != null);
    assert(ingredientsParams != null);
    assert(userPrefsParams != null);
    return noParams();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noParams(),
    Result stringListParams(List<String> list),
    Result stringParams(String string),
    Result ingredientsParams(List<String> ingredients),
    Result userPrefsParams(UserPreferences userPreferences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noParams != null) {
      return noParams();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noParams(NoParams value),
    @required Result stringListParams(StringListParams value),
    @required Result stringParams(StringParams value),
    @required Result ingredientsParams(IngredientsParams value),
    @required Result userPrefsParams(UserPrefsParams value),
  }) {
    assert(noParams != null);
    assert(stringListParams != null);
    assert(stringParams != null);
    assert(ingredientsParams != null);
    assert(userPrefsParams != null);
    return noParams(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noParams(NoParams value),
    Result stringListParams(StringListParams value),
    Result stringParams(StringParams value),
    Result ingredientsParams(IngredientsParams value),
    Result userPrefsParams(UserPrefsParams value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noParams != null) {
      return noParams(this);
    }
    return orElse();
  }
}

abstract class NoParams implements Params {
  factory NoParams() = _$NoParams;
}

abstract class $StringListParamsCopyWith<$Res> {
  factory $StringListParamsCopyWith(
          StringListParams value, $Res Function(StringListParams) then) =
      _$StringListParamsCopyWithImpl<$Res>;
  $Res call({List<String> list});
}

class _$StringListParamsCopyWithImpl<$Res> extends _$ParamsCopyWithImpl<$Res>
    implements $StringListParamsCopyWith<$Res> {
  _$StringListParamsCopyWithImpl(
      StringListParams _value, $Res Function(StringListParams) _then)
      : super(_value, (v) => _then(v as StringListParams));

  @override
  StringListParams get _value => super._value as StringListParams;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(StringListParams(
      list == freezed ? _value.list : list as List<String>,
    ));
  }
}

class _$StringListParams implements StringListParams {
  _$StringListParams(this.list) : assert(list != null);

  @override
  final List<String> list;

  @override
  String toString() {
    return 'Params.stringListParams(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StringListParams &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @override
  $StringListParamsCopyWith<StringListParams> get copyWith =>
      _$StringListParamsCopyWithImpl<StringListParams>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noParams(),
    @required Result stringListParams(List<String> list),
    @required Result stringParams(String string),
    @required Result ingredientsParams(List<String> ingredients),
    @required Result userPrefsParams(UserPreferences userPreferences),
  }) {
    assert(noParams != null);
    assert(stringListParams != null);
    assert(stringParams != null);
    assert(ingredientsParams != null);
    assert(userPrefsParams != null);
    return stringListParams(list);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noParams(),
    Result stringListParams(List<String> list),
    Result stringParams(String string),
    Result ingredientsParams(List<String> ingredients),
    Result userPrefsParams(UserPreferences userPreferences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stringListParams != null) {
      return stringListParams(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noParams(NoParams value),
    @required Result stringListParams(StringListParams value),
    @required Result stringParams(StringParams value),
    @required Result ingredientsParams(IngredientsParams value),
    @required Result userPrefsParams(UserPrefsParams value),
  }) {
    assert(noParams != null);
    assert(stringListParams != null);
    assert(stringParams != null);
    assert(ingredientsParams != null);
    assert(userPrefsParams != null);
    return stringListParams(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noParams(NoParams value),
    Result stringListParams(StringListParams value),
    Result stringParams(StringParams value),
    Result ingredientsParams(IngredientsParams value),
    Result userPrefsParams(UserPrefsParams value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stringListParams != null) {
      return stringListParams(this);
    }
    return orElse();
  }
}

abstract class StringListParams implements Params {
  factory StringListParams(List<String> list) = _$StringListParams;

  List<String> get list;
  $StringListParamsCopyWith<StringListParams> get copyWith;
}

abstract class $StringParamsCopyWith<$Res> {
  factory $StringParamsCopyWith(
          StringParams value, $Res Function(StringParams) then) =
      _$StringParamsCopyWithImpl<$Res>;
  $Res call({String string});
}

class _$StringParamsCopyWithImpl<$Res> extends _$ParamsCopyWithImpl<$Res>
    implements $StringParamsCopyWith<$Res> {
  _$StringParamsCopyWithImpl(
      StringParams _value, $Res Function(StringParams) _then)
      : super(_value, (v) => _then(v as StringParams));

  @override
  StringParams get _value => super._value as StringParams;

  @override
  $Res call({
    Object string = freezed,
  }) {
    return _then(StringParams(
      string == freezed ? _value.string : string as String,
    ));
  }
}

class _$StringParams implements StringParams {
  _$StringParams(this.string) : assert(string != null);

  @override
  final String string;

  @override
  String toString() {
    return 'Params.stringParams(string: $string)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StringParams &&
            (identical(other.string, string) ||
                const DeepCollectionEquality().equals(other.string, string)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(string);

  @override
  $StringParamsCopyWith<StringParams> get copyWith =>
      _$StringParamsCopyWithImpl<StringParams>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noParams(),
    @required Result stringListParams(List<String> list),
    @required Result stringParams(String string),
    @required Result ingredientsParams(List<String> ingredients),
    @required Result userPrefsParams(UserPreferences userPreferences),
  }) {
    assert(noParams != null);
    assert(stringListParams != null);
    assert(stringParams != null);
    assert(ingredientsParams != null);
    assert(userPrefsParams != null);
    return stringParams(string);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noParams(),
    Result stringListParams(List<String> list),
    Result stringParams(String string),
    Result ingredientsParams(List<String> ingredients),
    Result userPrefsParams(UserPreferences userPreferences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stringParams != null) {
      return stringParams(string);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noParams(NoParams value),
    @required Result stringListParams(StringListParams value),
    @required Result stringParams(StringParams value),
    @required Result ingredientsParams(IngredientsParams value),
    @required Result userPrefsParams(UserPrefsParams value),
  }) {
    assert(noParams != null);
    assert(stringListParams != null);
    assert(stringParams != null);
    assert(ingredientsParams != null);
    assert(userPrefsParams != null);
    return stringParams(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noParams(NoParams value),
    Result stringListParams(StringListParams value),
    Result stringParams(StringParams value),
    Result ingredientsParams(IngredientsParams value),
    Result userPrefsParams(UserPrefsParams value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stringParams != null) {
      return stringParams(this);
    }
    return orElse();
  }
}

abstract class StringParams implements Params {
  factory StringParams(String string) = _$StringParams;

  String get string;
  $StringParamsCopyWith<StringParams> get copyWith;
}

abstract class $IngredientsParamsCopyWith<$Res> {
  factory $IngredientsParamsCopyWith(
          IngredientsParams value, $Res Function(IngredientsParams) then) =
      _$IngredientsParamsCopyWithImpl<$Res>;
  $Res call({List<String> ingredients});
}

class _$IngredientsParamsCopyWithImpl<$Res> extends _$ParamsCopyWithImpl<$Res>
    implements $IngredientsParamsCopyWith<$Res> {
  _$IngredientsParamsCopyWithImpl(
      IngredientsParams _value, $Res Function(IngredientsParams) _then)
      : super(_value, (v) => _then(v as IngredientsParams));

  @override
  IngredientsParams get _value => super._value as IngredientsParams;

  @override
  $Res call({
    Object ingredients = freezed,
  }) {
    return _then(IngredientsParams(
      ingredients == freezed ? _value.ingredients : ingredients as List<String>,
    ));
  }
}

class _$IngredientsParams implements IngredientsParams {
  _$IngredientsParams(this.ingredients) : assert(ingredients != null);

  @override
  final List<String> ingredients;

  @override
  String toString() {
    return 'Params.ingredientsParams(ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IngredientsParams &&
            (identical(other.ingredients, ingredients) ||
                const DeepCollectionEquality()
                    .equals(other.ingredients, ingredients)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ingredients);

  @override
  $IngredientsParamsCopyWith<IngredientsParams> get copyWith =>
      _$IngredientsParamsCopyWithImpl<IngredientsParams>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noParams(),
    @required Result stringListParams(List<String> list),
    @required Result stringParams(String string),
    @required Result ingredientsParams(List<String> ingredients),
    @required Result userPrefsParams(UserPreferences userPreferences),
  }) {
    assert(noParams != null);
    assert(stringListParams != null);
    assert(stringParams != null);
    assert(ingredientsParams != null);
    assert(userPrefsParams != null);
    return ingredientsParams(ingredients);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noParams(),
    Result stringListParams(List<String> list),
    Result stringParams(String string),
    Result ingredientsParams(List<String> ingredients),
    Result userPrefsParams(UserPreferences userPreferences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ingredientsParams != null) {
      return ingredientsParams(ingredients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noParams(NoParams value),
    @required Result stringListParams(StringListParams value),
    @required Result stringParams(StringParams value),
    @required Result ingredientsParams(IngredientsParams value),
    @required Result userPrefsParams(UserPrefsParams value),
  }) {
    assert(noParams != null);
    assert(stringListParams != null);
    assert(stringParams != null);
    assert(ingredientsParams != null);
    assert(userPrefsParams != null);
    return ingredientsParams(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noParams(NoParams value),
    Result stringListParams(StringListParams value),
    Result stringParams(StringParams value),
    Result ingredientsParams(IngredientsParams value),
    Result userPrefsParams(UserPrefsParams value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ingredientsParams != null) {
      return ingredientsParams(this);
    }
    return orElse();
  }
}

abstract class IngredientsParams implements Params {
  factory IngredientsParams(List<String> ingredients) = _$IngredientsParams;

  List<String> get ingredients;
  $IngredientsParamsCopyWith<IngredientsParams> get copyWith;
}

abstract class $UserPrefsParamsCopyWith<$Res> {
  factory $UserPrefsParamsCopyWith(
          UserPrefsParams value, $Res Function(UserPrefsParams) then) =
      _$UserPrefsParamsCopyWithImpl<$Res>;
  $Res call({UserPreferences userPreferences});

  $UserPreferencesCopyWith<$Res> get userPreferences;
}

class _$UserPrefsParamsCopyWithImpl<$Res> extends _$ParamsCopyWithImpl<$Res>
    implements $UserPrefsParamsCopyWith<$Res> {
  _$UserPrefsParamsCopyWithImpl(
      UserPrefsParams _value, $Res Function(UserPrefsParams) _then)
      : super(_value, (v) => _then(v as UserPrefsParams));

  @override
  UserPrefsParams get _value => super._value as UserPrefsParams;

  @override
  $Res call({
    Object userPreferences = freezed,
  }) {
    return _then(UserPrefsParams(
      userPreferences == freezed
          ? _value.userPreferences
          : userPreferences as UserPreferences,
    ));
  }

  @override
  $UserPreferencesCopyWith<$Res> get userPreferences {
    if (_value.userPreferences == null) {
      return null;
    }
    return $UserPreferencesCopyWith<$Res>(_value.userPreferences, (value) {
      return _then(_value.copyWith(userPreferences: value));
    });
  }
}

class _$UserPrefsParams implements UserPrefsParams {
  _$UserPrefsParams(this.userPreferences) : assert(userPreferences != null);

  @override
  final UserPreferences userPreferences;

  @override
  String toString() {
    return 'Params.userPrefsParams(userPreferences: $userPreferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPrefsParams &&
            (identical(other.userPreferences, userPreferences) ||
                const DeepCollectionEquality()
                    .equals(other.userPreferences, userPreferences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userPreferences);

  @override
  $UserPrefsParamsCopyWith<UserPrefsParams> get copyWith =>
      _$UserPrefsParamsCopyWithImpl<UserPrefsParams>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noParams(),
    @required Result stringListParams(List<String> list),
    @required Result stringParams(String string),
    @required Result ingredientsParams(List<String> ingredients),
    @required Result userPrefsParams(UserPreferences userPreferences),
  }) {
    assert(noParams != null);
    assert(stringListParams != null);
    assert(stringParams != null);
    assert(ingredientsParams != null);
    assert(userPrefsParams != null);
    return userPrefsParams(userPreferences);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noParams(),
    Result stringListParams(List<String> list),
    Result stringParams(String string),
    Result ingredientsParams(List<String> ingredients),
    Result userPrefsParams(UserPreferences userPreferences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userPrefsParams != null) {
      return userPrefsParams(userPreferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noParams(NoParams value),
    @required Result stringListParams(StringListParams value),
    @required Result stringParams(StringParams value),
    @required Result ingredientsParams(IngredientsParams value),
    @required Result userPrefsParams(UserPrefsParams value),
  }) {
    assert(noParams != null);
    assert(stringListParams != null);
    assert(stringParams != null);
    assert(ingredientsParams != null);
    assert(userPrefsParams != null);
    return userPrefsParams(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noParams(NoParams value),
    Result stringListParams(StringListParams value),
    Result stringParams(StringParams value),
    Result ingredientsParams(IngredientsParams value),
    Result userPrefsParams(UserPrefsParams value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userPrefsParams != null) {
      return userPrefsParams(this);
    }
    return orElse();
  }
}

abstract class UserPrefsParams implements Params {
  factory UserPrefsParams(UserPreferences userPreferences) = _$UserPrefsParams;

  UserPreferences get userPreferences;
  $UserPrefsParamsCopyWith<UserPrefsParams> get copyWith;
}
