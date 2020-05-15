import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:nooberfood/dependencies_injection.iconfig.dart';

final GetIt getIt = GetIt.I;

@injectableInit
Future<void> configure() => $initGetIt(getIt);
