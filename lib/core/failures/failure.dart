import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  factory Failure.noconnection() = _NoConnectionFailure;
  factory Failure.server() = _ServerFailure;
  factory Failure.unknown() = _UnknownFailure;
  factory Failure.ingredientexist() = _IngredientExistFailure;
  factory Failure.ingredientnotexist() = _IngredientNotExistFailure;
}

String messageFromFailure(Failure failure) {
  return failure.when(
      noconnection: () =>
          "Connection error: please check your internet connection",
      server: () => "Server error: failed to fetch data from server",
      unknown: () => "Error: an unexpected error occured",
      ingredientexist: () => "Error: Ingredient already added",
      ingredientnotexist: () => "Error: could not remove ingredient");
}
