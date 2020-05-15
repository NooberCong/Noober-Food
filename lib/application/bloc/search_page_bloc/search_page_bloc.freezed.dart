// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchPageEventTearOff {
  const _$SearchPageEventTearOff();

  _SearchPageSearchEvent searchRecipes(String keyword) {
    return _SearchPageSearchEvent(
      keyword,
    );
  }
}

// ignore: unused_element
const $SearchPageEvent = _$SearchPageEventTearOff();

mixin _$SearchPageEvent {
  String get keyword;

  $SearchPageEventCopyWith<SearchPageEvent> get copyWith;
}

abstract class $SearchPageEventCopyWith<$Res> {
  factory $SearchPageEventCopyWith(
          SearchPageEvent value, $Res Function(SearchPageEvent) then) =
      _$SearchPageEventCopyWithImpl<$Res>;
  $Res call({String keyword});
}

class _$SearchPageEventCopyWithImpl<$Res>
    implements $SearchPageEventCopyWith<$Res> {
  _$SearchPageEventCopyWithImpl(this._value, this._then);

  final SearchPageEvent _value;
  // ignore: unused_field
  final $Res Function(SearchPageEvent) _then;

  @override
  $Res call({
    Object keyword = freezed,
  }) {
    return _then(_value.copyWith(
      keyword: keyword == freezed ? _value.keyword : keyword as String,
    ));
  }
}

abstract class _$SearchPageSearchEventCopyWith<$Res>
    implements $SearchPageEventCopyWith<$Res> {
  factory _$SearchPageSearchEventCopyWith(_SearchPageSearchEvent value,
          $Res Function(_SearchPageSearchEvent) then) =
      __$SearchPageSearchEventCopyWithImpl<$Res>;
  @override
  $Res call({String keyword});
}

class __$SearchPageSearchEventCopyWithImpl<$Res>
    extends _$SearchPageEventCopyWithImpl<$Res>
    implements _$SearchPageSearchEventCopyWith<$Res> {
  __$SearchPageSearchEventCopyWithImpl(_SearchPageSearchEvent _value,
      $Res Function(_SearchPageSearchEvent) _then)
      : super(_value, (v) => _then(v as _SearchPageSearchEvent));

  @override
  _SearchPageSearchEvent get _value => super._value as _SearchPageSearchEvent;

  @override
  $Res call({
    Object keyword = freezed,
  }) {
    return _then(_SearchPageSearchEvent(
      keyword == freezed ? _value.keyword : keyword as String,
    ));
  }
}

class _$_SearchPageSearchEvent implements _SearchPageSearchEvent {
  const _$_SearchPageSearchEvent(this.keyword) : assert(keyword != null);

  @override
  final String keyword;

  @override
  String toString() {
    return 'SearchPageEvent.searchRecipes(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchPageSearchEvent &&
            (identical(other.keyword, keyword) ||
                const DeepCollectionEquality().equals(other.keyword, keyword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(keyword);

  @override
  _$SearchPageSearchEventCopyWith<_SearchPageSearchEvent> get copyWith =>
      __$SearchPageSearchEventCopyWithImpl<_SearchPageSearchEvent>(
          this, _$identity);
}

abstract class _SearchPageSearchEvent implements SearchPageEvent {
  const factory _SearchPageSearchEvent(String keyword) =
      _$_SearchPageSearchEvent;

  @override
  String get keyword;
  @override
  _$SearchPageSearchEventCopyWith<_SearchPageSearchEvent> get copyWith;
}

class _$SearchPageStateTearOff {
  const _$SearchPageStateTearOff();

  _SearchPageStateInitial initial() {
    return const _SearchPageStateInitial();
  }

  _SearchPageStateLoading loading() {
    return const _SearchPageStateLoading();
  }

  _SearchPageStateLoaded loaded(List<RecipePreview> data) {
    return _SearchPageStateLoaded(
      data,
    );
  }

  __SearchPageStateError error(String message) {
    return __SearchPageStateError(
      message,
    );
  }
}

// ignore: unused_element
const $SearchPageState = _$SearchPageStateTearOff();

mixin _$SearchPageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<RecipePreview> data),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<RecipePreview> data),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_SearchPageStateInitial value),
    @required Result loading(_SearchPageStateLoading value),
    @required Result loaded(_SearchPageStateLoaded value),
    @required Result error(__SearchPageStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_SearchPageStateInitial value),
    Result loading(_SearchPageStateLoading value),
    Result loaded(_SearchPageStateLoaded value),
    Result error(__SearchPageStateError value),
    @required Result orElse(),
  });
}

abstract class $SearchPageStateCopyWith<$Res> {
  factory $SearchPageStateCopyWith(
          SearchPageState value, $Res Function(SearchPageState) then) =
      _$SearchPageStateCopyWithImpl<$Res>;
}

class _$SearchPageStateCopyWithImpl<$Res>
    implements $SearchPageStateCopyWith<$Res> {
  _$SearchPageStateCopyWithImpl(this._value, this._then);

  final SearchPageState _value;
  // ignore: unused_field
  final $Res Function(SearchPageState) _then;
}

abstract class _$SearchPageStateInitialCopyWith<$Res> {
  factory _$SearchPageStateInitialCopyWith(_SearchPageStateInitial value,
          $Res Function(_SearchPageStateInitial) then) =
      __$SearchPageStateInitialCopyWithImpl<$Res>;
}

class __$SearchPageStateInitialCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res>
    implements _$SearchPageStateInitialCopyWith<$Res> {
  __$SearchPageStateInitialCopyWithImpl(_SearchPageStateInitial _value,
      $Res Function(_SearchPageStateInitial) _then)
      : super(_value, (v) => _then(v as _SearchPageStateInitial));

  @override
  _SearchPageStateInitial get _value => super._value as _SearchPageStateInitial;
}

class _$_SearchPageStateInitial implements _SearchPageStateInitial {
  const _$_SearchPageStateInitial();

  @override
  String toString() {
    return 'SearchPageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchPageStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<RecipePreview> data),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<RecipePreview> data),
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
    @required Result initial(_SearchPageStateInitial value),
    @required Result loading(_SearchPageStateLoading value),
    @required Result loaded(_SearchPageStateLoaded value),
    @required Result error(__SearchPageStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_SearchPageStateInitial value),
    Result loading(_SearchPageStateLoading value),
    Result loaded(_SearchPageStateLoaded value),
    Result error(__SearchPageStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchPageStateInitial implements SearchPageState {
  const factory _SearchPageStateInitial() = _$_SearchPageStateInitial;
}

abstract class _$SearchPageStateLoadingCopyWith<$Res> {
  factory _$SearchPageStateLoadingCopyWith(_SearchPageStateLoading value,
          $Res Function(_SearchPageStateLoading) then) =
      __$SearchPageStateLoadingCopyWithImpl<$Res>;
}

class __$SearchPageStateLoadingCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res>
    implements _$SearchPageStateLoadingCopyWith<$Res> {
  __$SearchPageStateLoadingCopyWithImpl(_SearchPageStateLoading _value,
      $Res Function(_SearchPageStateLoading) _then)
      : super(_value, (v) => _then(v as _SearchPageStateLoading));

  @override
  _SearchPageStateLoading get _value => super._value as _SearchPageStateLoading;
}

class _$_SearchPageStateLoading implements _SearchPageStateLoading {
  const _$_SearchPageStateLoading();

  @override
  String toString() {
    return 'SearchPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchPageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<RecipePreview> data),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<RecipePreview> data),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_SearchPageStateInitial value),
    @required Result loading(_SearchPageStateLoading value),
    @required Result loaded(_SearchPageStateLoaded value),
    @required Result error(__SearchPageStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_SearchPageStateInitial value),
    Result loading(_SearchPageStateLoading value),
    Result loaded(_SearchPageStateLoaded value),
    Result error(__SearchPageStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchPageStateLoading implements SearchPageState {
  const factory _SearchPageStateLoading() = _$_SearchPageStateLoading;
}

abstract class _$SearchPageStateLoadedCopyWith<$Res> {
  factory _$SearchPageStateLoadedCopyWith(_SearchPageStateLoaded value,
          $Res Function(_SearchPageStateLoaded) then) =
      __$SearchPageStateLoadedCopyWithImpl<$Res>;
  $Res call({List<RecipePreview> data});
}

class __$SearchPageStateLoadedCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res>
    implements _$SearchPageStateLoadedCopyWith<$Res> {
  __$SearchPageStateLoadedCopyWithImpl(_SearchPageStateLoaded _value,
      $Res Function(_SearchPageStateLoaded) _then)
      : super(_value, (v) => _then(v as _SearchPageStateLoaded));

  @override
  _SearchPageStateLoaded get _value => super._value as _SearchPageStateLoaded;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_SearchPageStateLoaded(
      data == freezed ? _value.data : data as List<RecipePreview>,
    ));
  }
}

class _$_SearchPageStateLoaded implements _SearchPageStateLoaded {
  const _$_SearchPageStateLoaded(this.data) : assert(data != null);

  @override
  final List<RecipePreview> data;

  @override
  String toString() {
    return 'SearchPageState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchPageStateLoaded &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$SearchPageStateLoadedCopyWith<_SearchPageStateLoaded> get copyWith =>
      __$SearchPageStateLoadedCopyWithImpl<_SearchPageStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<RecipePreview> data),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<RecipePreview> data),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_SearchPageStateInitial value),
    @required Result loading(_SearchPageStateLoading value),
    @required Result loaded(_SearchPageStateLoaded value),
    @required Result error(__SearchPageStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_SearchPageStateInitial value),
    Result loading(_SearchPageStateLoading value),
    Result loaded(_SearchPageStateLoaded value),
    Result error(__SearchPageStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SearchPageStateLoaded implements SearchPageState {
  const factory _SearchPageStateLoaded(List<RecipePreview> data) =
      _$_SearchPageStateLoaded;

  List<RecipePreview> get data;
  _$SearchPageStateLoadedCopyWith<_SearchPageStateLoaded> get copyWith;
}

abstract class _$_SearchPageStateErrorCopyWith<$Res> {
  factory _$_SearchPageStateErrorCopyWith(__SearchPageStateError value,
          $Res Function(__SearchPageStateError) then) =
      __$_SearchPageStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$_SearchPageStateErrorCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res>
    implements _$_SearchPageStateErrorCopyWith<$Res> {
  __$_SearchPageStateErrorCopyWithImpl(__SearchPageStateError _value,
      $Res Function(__SearchPageStateError) _then)
      : super(_value, (v) => _then(v as __SearchPageStateError));

  @override
  __SearchPageStateError get _value => super._value as __SearchPageStateError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(__SearchPageStateError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$__SearchPageStateError implements __SearchPageStateError {
  const _$__SearchPageStateError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'SearchPageState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is __SearchPageStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$_SearchPageStateErrorCopyWith<__SearchPageStateError> get copyWith =>
      __$_SearchPageStateErrorCopyWithImpl<__SearchPageStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<RecipePreview> data),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<RecipePreview> data),
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
    @required Result initial(_SearchPageStateInitial value),
    @required Result loading(_SearchPageStateLoading value),
    @required Result loaded(_SearchPageStateLoaded value),
    @required Result error(__SearchPageStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_SearchPageStateInitial value),
    Result loading(_SearchPageStateLoading value),
    Result loaded(_SearchPageStateLoaded value),
    Result error(__SearchPageStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class __SearchPageStateError implements SearchPageState {
  const factory __SearchPageStateError(String message) =
      _$__SearchPageStateError;

  String get message;
  _$_SearchPageStateErrorCopyWith<__SearchPageStateError> get copyWith;
}
