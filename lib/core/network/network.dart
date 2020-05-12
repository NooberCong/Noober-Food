import 'package:data_connection_checker/data_connection_checker.dart';

abstract class INetwork {
  Future<bool> get hasInternetConnection;
}

class Network implements INetwork {
  final DataConnectionChecker dataConnectionChecker;

  Network(this.dataConnectionChecker);
  @override
  Future<bool> get hasInternetConnection => dataConnectionChecker.hasConnection;
}
