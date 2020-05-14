import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';
@freezed
abstract class Failure with _$Failure {
  factory Failure.noconnection() = _NoConnectionFailure;
  factory Failure.server() = _ServerFailure;
  factory Failure.unknown() = _UnknownFailure;
}