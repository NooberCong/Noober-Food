// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'discover_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DiscoverPageBlocEventTearOff {
  const _$DiscoverPageBlocEventTearOff();

  _GetRandomRecipes getRandomRecipes(List<String> tags) {
    return _GetRandomRecipes(
      tags,
    );
  }
}

// ignore: unused_element
const $DiscoverPageBlocEvent = _$DiscoverPageBlocEventTearOff();

mixin _$DiscoverPageBlocEvent {
  List<String> get tags;

  $DiscoverPageBlocEventCopyWith<DiscoverPageBlocEvent> get copyWith;
}

abstract class $DiscoverPageBlocEventCopyWith<$Res> {
  factory $DiscoverPageBlocEventCopyWith(DiscoverPageBlocEvent value,
          $Res Function(DiscoverPageBlocEvent) then) =
      _$DiscoverPageBlocEventCopyWithImpl<$Res>;
  $Res call({List<String> tags});
}

class _$DiscoverPageBlocEventCopyWithImpl<$Res>
    implements $DiscoverPageBlocEventCopyWith<$Res> {
  _$DiscoverPageBlocEventCopyWithImpl(this._value, this._then);

  final DiscoverPageBlocEvent _value;
  // ignore: unused_field
  final $Res Function(DiscoverPageBlocEvent) _then;

  @override
  $Res call({
    Object tags = freezed,
  }) {
    return _then(_value.copyWith(
      tags: tags == freezed ? _value.tags : tags as List<String>,
    ));
  }
}

abstract class _$GetRandomRecipesCopyWith<$Res>
    implements $DiscoverPageBlocEventCopyWith<$Res> {
  factory _$GetRandomRecipesCopyWith(
          _GetRandomRecipes value, $Res Function(_GetRandomRecipes) then) =
      __$GetRandomRecipesCopyWithImpl<$Res>;
  @override
  $Res call({List<String> tags});
}

class __$GetRandomRecipesCopyWithImpl<$Res>
    extends _$DiscoverPageBlocEventCopyWithImpl<$Res>
    implements _$GetRandomRecipesCopyWith<$Res> {
  __$GetRandomRecipesCopyWithImpl(
      _GetRandomRecipes _value, $Res Function(_GetRandomRecipes) _then)
      : super(_value, (v) => _then(v as _GetRandomRecipes));

  @override
  _GetRandomRecipes get _value => super._value as _GetRandomRecipes;

  @override
  $Res call({
    Object tags = freezed,
  }) {
    return _then(_GetRandomRecipes(
      tags == freezed ? _value.tags : tags as List<String>,
    ));
  }
}

class _$_GetRandomRecipes implements _GetRandomRecipes {
  const _$_GetRandomRecipes(this.tags) : assert(tags != null);

  @override
  final List<String> tags;

  @override
  String toString() {
    return 'DiscoverPageBlocEvent.getRandomRecipes(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetRandomRecipes &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tags);

  @override
  _$GetRandomRecipesCopyWith<_GetRandomRecipes> get copyWith =>
      __$GetRandomRecipesCopyWithImpl<_GetRandomRecipes>(this, _$identity);
}

abstract class _GetRandomRecipes implements DiscoverPageBlocEvent {
  const factory _GetRandomRecipes(List<String> tags) = _$_GetRandomRecipes;

  @override
  List<String> get tags;
  @override
  _$GetRandomRecipesCopyWith<_GetRandomRecipes> get copyWith;
}

class _$DiscoverPageBlocStateTearOff {
  const _$DiscoverPageBlocStateTearOff();

  _DiscoverPageBlocInitialState initial() {
    return const _DiscoverPageBlocInitialState();
  }

  _DiscoverPageBlocLoadingState loadingRandomRecipes() {
    return const _DiscoverPageBlocLoadingState();
  }

  _DiscoverPageBlocLoadedState loadedRandomRecipes(
      List<RecipeInformation> data) {
    return _DiscoverPageBlocLoadedState(
      data,
    );
  }

  _DiscoverPageBlocStateError error(String message) {
    return _DiscoverPageBlocStateError(
      message,
    );
  }
}

// ignore: unused_element
const $DiscoverPageBlocState = _$DiscoverPageBlocStateTearOff();

mixin _$DiscoverPageBlocState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingRandomRecipes(),
    @required Result loadedRandomRecipes(List<RecipeInformation> data),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingRandomRecipes(),
    Result loadedRandomRecipes(List<RecipeInformation> data),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DiscoverPageBlocInitialState value),
    @required Result loadingRandomRecipes(_DiscoverPageBlocLoadingState value),
    @required Result loadedRandomRecipes(_DiscoverPageBlocLoadedState value),
    @required Result error(_DiscoverPageBlocStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DiscoverPageBlocInitialState value),
    Result loadingRandomRecipes(_DiscoverPageBlocLoadingState value),
    Result loadedRandomRecipes(_DiscoverPageBlocLoadedState value),
    Result error(_DiscoverPageBlocStateError value),
    @required Result orElse(),
  });
}

abstract class $DiscoverPageBlocStateCopyWith<$Res> {
  factory $DiscoverPageBlocStateCopyWith(DiscoverPageBlocState value,
          $Res Function(DiscoverPageBlocState) then) =
      _$DiscoverPageBlocStateCopyWithImpl<$Res>;
}

class _$DiscoverPageBlocStateCopyWithImpl<$Res>
    implements $DiscoverPageBlocStateCopyWith<$Res> {
  _$DiscoverPageBlocStateCopyWithImpl(this._value, this._then);

  final DiscoverPageBlocState _value;
  // ignore: unused_field
  final $Res Function(DiscoverPageBlocState) _then;
}

abstract class _$DiscoverPageBlocInitialStateCopyWith<$Res> {
  factory _$DiscoverPageBlocInitialStateCopyWith(
          _DiscoverPageBlocInitialState value,
          $Res Function(_DiscoverPageBlocInitialState) then) =
      __$DiscoverPageBlocInitialStateCopyWithImpl<$Res>;
}

class __$DiscoverPageBlocInitialStateCopyWithImpl<$Res>
    extends _$DiscoverPageBlocStateCopyWithImpl<$Res>
    implements _$DiscoverPageBlocInitialStateCopyWith<$Res> {
  __$DiscoverPageBlocInitialStateCopyWithImpl(
      _DiscoverPageBlocInitialState _value,
      $Res Function(_DiscoverPageBlocInitialState) _then)
      : super(_value, (v) => _then(v as _DiscoverPageBlocInitialState));

  @override
  _DiscoverPageBlocInitialState get _value =>
      super._value as _DiscoverPageBlocInitialState;
}

class _$_DiscoverPageBlocInitialState implements _DiscoverPageBlocInitialState {
  const _$_DiscoverPageBlocInitialState();

  @override
  String toString() {
    return 'DiscoverPageBlocState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DiscoverPageBlocInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingRandomRecipes(),
    @required Result loadedRandomRecipes(List<RecipeInformation> data),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loadingRandomRecipes != null);
    assert(loadedRandomRecipes != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingRandomRecipes(),
    Result loadedRandomRecipes(List<RecipeInformation> data),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DiscoverPageBlocInitialState value),
    @required Result loadingRandomRecipes(_DiscoverPageBlocLoadingState value),
    @required Result loadedRandomRecipes(_DiscoverPageBlocLoadedState value),
    @required Result error(_DiscoverPageBlocStateError value),
  }) {
    assert(initial != null);
    assert(loadingRandomRecipes != null);
    assert(loadedRandomRecipes != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DiscoverPageBlocInitialState value),
    Result loadingRandomRecipes(_DiscoverPageBlocLoadingState value),
    Result loadedRandomRecipes(_DiscoverPageBlocLoadedState value),
    Result error(_DiscoverPageBlocStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DiscoverPageBlocInitialState implements DiscoverPageBlocState {
  const factory _DiscoverPageBlocInitialState() =
      _$_DiscoverPageBlocInitialState;
}

abstract class _$DiscoverPageBlocLoadingStateCopyWith<$Res> {
  factory _$DiscoverPageBlocLoadingStateCopyWith(
          _DiscoverPageBlocLoadingState value,
          $Res Function(_DiscoverPageBlocLoadingState) then) =
      __$DiscoverPageBlocLoadingStateCopyWithImpl<$Res>;
}

class __$DiscoverPageBlocLoadingStateCopyWithImpl<$Res>
    extends _$DiscoverPageBlocStateCopyWithImpl<$Res>
    implements _$DiscoverPageBlocLoadingStateCopyWith<$Res> {
  __$DiscoverPageBlocLoadingStateCopyWithImpl(
      _DiscoverPageBlocLoadingState _value,
      $Res Function(_DiscoverPageBlocLoadingState) _then)
      : super(_value, (v) => _then(v as _DiscoverPageBlocLoadingState));

  @override
  _DiscoverPageBlocLoadingState get _value =>
      super._value as _DiscoverPageBlocLoadingState;
}

class _$_DiscoverPageBlocLoadingState implements _DiscoverPageBlocLoadingState {
  const _$_DiscoverPageBlocLoadingState();

  @override
  String toString() {
    return 'DiscoverPageBlocState.loadingRandomRecipes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DiscoverPageBlocLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingRandomRecipes(),
    @required Result loadedRandomRecipes(List<RecipeInformation> data),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loadingRandomRecipes != null);
    assert(loadedRandomRecipes != null);
    assert(error != null);
    return loadingRandomRecipes();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingRandomRecipes(),
    Result loadedRandomRecipes(List<RecipeInformation> data),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingRandomRecipes != null) {
      return loadingRandomRecipes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DiscoverPageBlocInitialState value),
    @required Result loadingRandomRecipes(_DiscoverPageBlocLoadingState value),
    @required Result loadedRandomRecipes(_DiscoverPageBlocLoadedState value),
    @required Result error(_DiscoverPageBlocStateError value),
  }) {
    assert(initial != null);
    assert(loadingRandomRecipes != null);
    assert(loadedRandomRecipes != null);
    assert(error != null);
    return loadingRandomRecipes(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DiscoverPageBlocInitialState value),
    Result loadingRandomRecipes(_DiscoverPageBlocLoadingState value),
    Result loadedRandomRecipes(_DiscoverPageBlocLoadedState value),
    Result error(_DiscoverPageBlocStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingRandomRecipes != null) {
      return loadingRandomRecipes(this);
    }
    return orElse();
  }
}

abstract class _DiscoverPageBlocLoadingState implements DiscoverPageBlocState {
  const factory _DiscoverPageBlocLoadingState() =
      _$_DiscoverPageBlocLoadingState;
}

abstract class _$DiscoverPageBlocLoadedStateCopyWith<$Res> {
  factory _$DiscoverPageBlocLoadedStateCopyWith(
          _DiscoverPageBlocLoadedState value,
          $Res Function(_DiscoverPageBlocLoadedState) then) =
      __$DiscoverPageBlocLoadedStateCopyWithImpl<$Res>;
  $Res call({List<RecipeInformation> data});
}

class __$DiscoverPageBlocLoadedStateCopyWithImpl<$Res>
    extends _$DiscoverPageBlocStateCopyWithImpl<$Res>
    implements _$DiscoverPageBlocLoadedStateCopyWith<$Res> {
  __$DiscoverPageBlocLoadedStateCopyWithImpl(
      _DiscoverPageBlocLoadedState _value,
      $Res Function(_DiscoverPageBlocLoadedState) _then)
      : super(_value, (v) => _then(v as _DiscoverPageBlocLoadedState));

  @override
  _DiscoverPageBlocLoadedState get _value =>
      super._value as _DiscoverPageBlocLoadedState;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_DiscoverPageBlocLoadedState(
      data == freezed ? _value.data : data as List<RecipeInformation>,
    ));
  }
}

class _$_DiscoverPageBlocLoadedState implements _DiscoverPageBlocLoadedState {
  const _$_DiscoverPageBlocLoadedState(this.data) : assert(data != null);

  @override
  final List<RecipeInformation> data;

  @override
  String toString() {
    return 'DiscoverPageBlocState.loadedRandomRecipes(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiscoverPageBlocLoadedState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$DiscoverPageBlocLoadedStateCopyWith<_DiscoverPageBlocLoadedState>
      get copyWith => __$DiscoverPageBlocLoadedStateCopyWithImpl<
          _DiscoverPageBlocLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingRandomRecipes(),
    @required Result loadedRandomRecipes(List<RecipeInformation> data),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loadingRandomRecipes != null);
    assert(loadedRandomRecipes != null);
    assert(error != null);
    return loadedRandomRecipes(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingRandomRecipes(),
    Result loadedRandomRecipes(List<RecipeInformation> data),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedRandomRecipes != null) {
      return loadedRandomRecipes(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DiscoverPageBlocInitialState value),
    @required Result loadingRandomRecipes(_DiscoverPageBlocLoadingState value),
    @required Result loadedRandomRecipes(_DiscoverPageBlocLoadedState value),
    @required Result error(_DiscoverPageBlocStateError value),
  }) {
    assert(initial != null);
    assert(loadingRandomRecipes != null);
    assert(loadedRandomRecipes != null);
    assert(error != null);
    return loadedRandomRecipes(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DiscoverPageBlocInitialState value),
    Result loadingRandomRecipes(_DiscoverPageBlocLoadingState value),
    Result loadedRandomRecipes(_DiscoverPageBlocLoadedState value),
    Result error(_DiscoverPageBlocStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedRandomRecipes != null) {
      return loadedRandomRecipes(this);
    }
    return orElse();
  }
}

abstract class _DiscoverPageBlocLoadedState implements DiscoverPageBlocState {
  const factory _DiscoverPageBlocLoadedState(List<RecipeInformation> data) =
      _$_DiscoverPageBlocLoadedState;

  List<RecipeInformation> get data;
  _$DiscoverPageBlocLoadedStateCopyWith<_DiscoverPageBlocLoadedState>
      get copyWith;
}

abstract class _$DiscoverPageBlocStateErrorCopyWith<$Res> {
  factory _$DiscoverPageBlocStateErrorCopyWith(
          _DiscoverPageBlocStateError value,
          $Res Function(_DiscoverPageBlocStateError) then) =
      __$DiscoverPageBlocStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$DiscoverPageBlocStateErrorCopyWithImpl<$Res>
    extends _$DiscoverPageBlocStateCopyWithImpl<$Res>
    implements _$DiscoverPageBlocStateErrorCopyWith<$Res> {
  __$DiscoverPageBlocStateErrorCopyWithImpl(_DiscoverPageBlocStateError _value,
      $Res Function(_DiscoverPageBlocStateError) _then)
      : super(_value, (v) => _then(v as _DiscoverPageBlocStateError));

  @override
  _DiscoverPageBlocStateError get _value =>
      super._value as _DiscoverPageBlocStateError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_DiscoverPageBlocStateError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_DiscoverPageBlocStateError implements _DiscoverPageBlocStateError {
  const _$_DiscoverPageBlocStateError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'DiscoverPageBlocState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiscoverPageBlocStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$DiscoverPageBlocStateErrorCopyWith<_DiscoverPageBlocStateError>
      get copyWith => __$DiscoverPageBlocStateErrorCopyWithImpl<
          _DiscoverPageBlocStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingRandomRecipes(),
    @required Result loadedRandomRecipes(List<RecipeInformation> data),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loadingRandomRecipes != null);
    assert(loadedRandomRecipes != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingRandomRecipes(),
    Result loadedRandomRecipes(List<RecipeInformation> data),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DiscoverPageBlocInitialState value),
    @required Result loadingRandomRecipes(_DiscoverPageBlocLoadingState value),
    @required Result loadedRandomRecipes(_DiscoverPageBlocLoadedState value),
    @required Result error(_DiscoverPageBlocStateError value),
  }) {
    assert(initial != null);
    assert(loadingRandomRecipes != null);
    assert(loadedRandomRecipes != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DiscoverPageBlocInitialState value),
    Result loadingRandomRecipes(_DiscoverPageBlocLoadingState value),
    Result loadedRandomRecipes(_DiscoverPageBlocLoadedState value),
    Result error(_DiscoverPageBlocStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DiscoverPageBlocStateError implements DiscoverPageBlocState {
  const factory _DiscoverPageBlocStateError(String message) =
      _$_DiscoverPageBlocStateError;

  String get message;
  _$DiscoverPageBlocStateErrorCopyWith<_DiscoverPageBlocStateError>
      get copyWith;
}
