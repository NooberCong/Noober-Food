import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:data_connection_checker/data_connection_checker.dart';


@registerModule
abstract class RegisterModule {
  @lazySingleton
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @lazySingleton
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();

  @lazySingleton
  http.Client get client => http.Client();
}
