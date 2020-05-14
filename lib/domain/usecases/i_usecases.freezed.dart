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

  RandomParams tagsRequestParams(List<String> tags) {
    return RandomParams(
      tags,
    );
  }

  KeywordParams keywordParams(String keyword) {
    return KeywordParams(
      keyword,
    );
  }

  IdParams idParams(String id) {
    return IdParams(
      id,
    );
  }

  IngredientsParams ingredientsParams(List<String> ingredients) {
    return IngredientsParams(
      ingredients,
    );
  }
}

// ignore: unused_element
const $Params = _$ParamsTearOff();

mixin _$Params {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noParams(),
    @required Result tagsRequestParams(List<String> tags),
    @required Result keywordParams(String keyword),
    @required Result idParams(String id),
    @required Result ingredientsParams(List<String> ingredients),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noParams(),
    Result tagsRequestParams(List<String> tags),
    Result keywordParams(String keyword),
    Result idParams(String id),
    Result ingredientsParams(List<String> ingredients),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noParams(NoParams value),
    @required Result tagsRequestParams(RandomParams value),
    @required Result keywordParams(KeywordParams value),
    @required Result idParams(IdParams value),
    @required Result ingredientsParams(IngredientsParams value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noParams(NoParams value),
    Result tagsRequestParams(RandomParams value),
    Result keywordParams(KeywordParams value),
    Result idParams(IdParams value),
    Result ingredientsParams(IngredientsParams value),
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
    @required Result tagsRequestParams(List<String> tags),
    @required Result keywordParams(String keyword),
    @required Result idParams(String id),
    @required Result ingredientsParams(List<String> ingredients),
  }) {
    assert(noParams != null);
    assert(tagsRequestParams != null);
    assert(keywordParams != null);
    assert(idParams != null);
    assert(ingredientsParams != null);
    return noParams();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noParams(),
    Result tagsRequestParams(List<String> tags),
    Result keywordParams(String keyword),
    Result idParams(String id),
    Result ingredientsParams(List<String> ingredients),
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
    @required Result tagsRequestParams(RandomParams value),
    @required Result keywordParams(KeywordParams value),
    @required Result idParams(IdParams value),
    @required Result ingredientsParams(IngredientsParams value),
  }) {
    assert(noParams != null);
    assert(tagsRequestParams != null);
    assert(keywordParams != null);
    assert(idParams != null);
    assert(ingredientsParams != null);
    return noParams(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noParams(NoParams value),
    Result tagsRequestParams(RandomParams value),
    Result keywordParams(KeywordParams value),
    Result idParams(IdParams value),
    Result ingredientsParams(IngredientsParams value),
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

abstract class $RandomParamsCopyWith<$Res> {
  factory $RandomParamsCopyWith(
          RandomParams value, $Res Function(RandomParams) then) =
      _$RandomParamsCopyWithImpl<$Res>;
  $Res call({List<String> tags});
}

class _$RandomParamsCopyWithImpl<$Res> extends _$ParamsCopyWithImpl<$Res>
    implements $RandomParamsCopyWith<$Res> {
  _$RandomParamsCopyWithImpl(
      RandomParams _value, $Res Function(RandomParams) _then)
      : super(_value, (v) => _then(v as RandomParams));

  @override
  RandomParams get _value => super._value as RandomParams;

  @override
  $Res call({
    Object tags = freezed,
  }) {
    return _then(RandomParams(
      tags == freezed ? _value.tags : tags as List<String>,
    ));
  }
}

class _$RandomParams implements RandomParams {
  _$RandomParams(this.tags) : assert(tags != null);

  @override
  final List<String> tags;

  @override
  String toString() {
    return 'Params.tagsRequestParams(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RandomParams &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tags);

  @override
  $RandomParamsCopyWith<RandomParams> get copyWith =>
      _$RandomParamsCopyWithImpl<RandomParams>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noParams(),
    @required Result tagsRequestParams(List<String> tags),
    @required Result keywordParams(String keyword),
    @required Result idParams(String id),
    @required Result ingredientsParams(List<String> ingredients),
  }) {
    assert(noParams != null);
    assert(tagsRequestParams != null);
    assert(keywordParams != null);
    assert(idParams != null);
    assert(ingredientsParams != null);
    return tagsRequestParams(tags);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noParams(),
    Result tagsRequestParams(List<String> tags),
    Result keywordParams(String keyword),
    Result idParams(String id),
    Result ingredientsParams(List<String> ingredients),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tagsRequestParams != null) {
      return tagsRequestParams(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noParams(NoParams value),
    @required Result tagsRequestParams(RandomParams value),
    @required Result keywordParams(KeywordParams value),
    @required Result idParams(IdParams value),
    @required Result ingredientsParams(IngredientsParams value),
  }) {
    assert(noParams != null);
    assert(tagsRequestParams != null);
    assert(keywordParams != null);
    assert(idParams != null);
    assert(ingredientsParams != null);
    return tagsRequestParams(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noParams(NoParams value),
    Result tagsRequestParams(RandomParams value),
    Result keywordParams(KeywordParams value),
    Result idParams(IdParams value),
    Result ingredientsParams(IngredientsParams value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tagsRequestParams != null) {
      return tagsRequestParams(this);
    }
    return orElse();
  }
}

abstract class RandomParams implements Params {
  factory RandomParams(List<String> tags) = _$RandomParams;

  List<String> get tags;
  $RandomParamsCopyWith<RandomParams> get copyWith;
}

abstract class $KeywordParamsCopyWith<$Res> {
  factory $KeywordParamsCopyWith(
          KeywordParams value, $Res Function(KeywordParams) then) =
      _$KeywordParamsCopyWithImpl<$Res>;
  $Res call({String keyword});
}

class _$KeywordParamsCopyWithImpl<$Res> extends _$ParamsCopyWithImpl<$Res>
    implements $KeywordParamsCopyWith<$Res> {
  _$KeywordParamsCopyWithImpl(
      KeywordParams _value, $Res Function(KeywordParams) _then)
      : super(_value, (v) => _then(v as KeywordParams));

  @override
  KeywordParams get _value => super._value as KeywordParams;

  @override
  $Res call({
    Object keyword = freezed,
  }) {
    return _then(KeywordParams(
      keyword == freezed ? _value.keyword : keyword as String,
    ));
  }
}

class _$KeywordParams implements KeywordParams {
  _$KeywordParams(this.keyword) : assert(keyword != null);

  @override
  final String keyword;

  @override
  String toString() {
    return 'Params.keywordParams(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is KeywordParams &&
            (identical(other.keyword, keyword) ||
                const DeepCollectionEquality().equals(other.keyword, keyword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(keyword);

  @override
  $KeywordParamsCopyWith<KeywordParams> get copyWith =>
      _$KeywordParamsCopyWithImpl<KeywordParams>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noParams(),
    @required Result tagsRequestParams(List<String> tags),
    @required Result keywordParams(String keyword),
    @required Result idParams(String id),
    @required Result ingredientsParams(List<String> ingredients),
  }) {
    assert(noParams != null);
    assert(tagsRequestParams != null);
    assert(keywordParams != null);
    assert(idParams != null);
    assert(ingredientsParams != null);
    return keywordParams(keyword);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noParams(),
    Result tagsRequestParams(List<String> tags),
    Result keywordParams(String keyword),
    Result idParams(String id),
    Result ingredientsParams(List<String> ingredients),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (keywordParams != null) {
      return keywordParams(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noParams(NoParams value),
    @required Result tagsRequestParams(RandomParams value),
    @required Result keywordParams(KeywordParams value),
    @required Result idParams(IdParams value),
    @required Result ingredientsParams(IngredientsParams value),
  }) {
    assert(noParams != null);
    assert(tagsRequestParams != null);
    assert(keywordParams != null);
    assert(idParams != null);
    assert(ingredientsParams != null);
    return keywordParams(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noParams(NoParams value),
    Result tagsRequestParams(RandomParams value),
    Result keywordParams(KeywordParams value),
    Result idParams(IdParams value),
    Result ingredientsParams(IngredientsParams value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (keywordParams != null) {
      return keywordParams(this);
    }
    return orElse();
  }
}

abstract class KeywordParams implements Params {
  factory KeywordParams(String keyword) = _$KeywordParams;

  String get keyword;
  $KeywordParamsCopyWith<KeywordParams> get copyWith;
}

abstract class $IdParamsCopyWith<$Res> {
  factory $IdParamsCopyWith(IdParams value, $Res Function(IdParams) then) =
      _$IdParamsCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$IdParamsCopyWithImpl<$Res> extends _$ParamsCopyWithImpl<$Res>
    implements $IdParamsCopyWith<$Res> {
  _$IdParamsCopyWithImpl(IdParams _value, $Res Function(IdParams) _then)
      : super(_value, (v) => _then(v as IdParams));

  @override
  IdParams get _value => super._value as IdParams;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(IdParams(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$IdParams implements IdParams {
  _$IdParams(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'Params.idParams(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IdParams &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $IdParamsCopyWith<IdParams> get copyWith =>
      _$IdParamsCopyWithImpl<IdParams>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noParams(),
    @required Result tagsRequestParams(List<String> tags),
    @required Result keywordParams(String keyword),
    @required Result idParams(String id),
    @required Result ingredientsParams(List<String> ingredients),
  }) {
    assert(noParams != null);
    assert(tagsRequestParams != null);
    assert(keywordParams != null);
    assert(idParams != null);
    assert(ingredientsParams != null);
    return idParams(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noParams(),
    Result tagsRequestParams(List<String> tags),
    Result keywordParams(String keyword),
    Result idParams(String id),
    Result ingredientsParams(List<String> ingredients),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idParams != null) {
      return idParams(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noParams(NoParams value),
    @required Result tagsRequestParams(RandomParams value),
    @required Result keywordParams(KeywordParams value),
    @required Result idParams(IdParams value),
    @required Result ingredientsParams(IngredientsParams value),
  }) {
    assert(noParams != null);
    assert(tagsRequestParams != null);
    assert(keywordParams != null);
    assert(idParams != null);
    assert(ingredientsParams != null);
    return idParams(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noParams(NoParams value),
    Result tagsRequestParams(RandomParams value),
    Result keywordParams(KeywordParams value),
    Result idParams(IdParams value),
    Result ingredientsParams(IngredientsParams value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idParams != null) {
      return idParams(this);
    }
    return orElse();
  }
}

abstract class IdParams implements Params {
  factory IdParams(String id) = _$IdParams;

  String get id;
  $IdParamsCopyWith<IdParams> get copyWith;
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
    @required Result tagsRequestParams(List<String> tags),
    @required Result keywordParams(String keyword),
    @required Result idParams(String id),
    @required Result ingredientsParams(List<String> ingredients),
  }) {
    assert(noParams != null);
    assert(tagsRequestParams != null);
    assert(keywordParams != null);
    assert(idParams != null);
    assert(ingredientsParams != null);
    return ingredientsParams(ingredients);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noParams(),
    Result tagsRequestParams(List<String> tags),
    Result keywordParams(String keyword),
    Result idParams(String id),
    Result ingredientsParams(List<String> ingredients),
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
    @required Result tagsRequestParams(RandomParams value),
    @required Result keywordParams(KeywordParams value),
    @required Result idParams(IdParams value),
    @required Result ingredientsParams(IngredientsParams value),
  }) {
    assert(noParams != null);
    assert(tagsRequestParams != null);
    assert(keywordParams != null);
    assert(idParams != null);
    assert(ingredientsParams != null);
    return ingredientsParams(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noParams(NoParams value),
    Result tagsRequestParams(RandomParams value),
    Result keywordParams(KeywordParams value),
    Result idParams(IdParams value),
    Result ingredientsParams(IngredientsParams value),
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
