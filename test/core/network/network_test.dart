import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nooberfood/core/network/network.dart';

class MockDataConnectionChecker extends Mock implements DataConnectionChecker {}

void main() {
  INetwork network;
  MockDataConnectionChecker mockDataConnectionChecker;
  setUp(() {
    mockDataConnectionChecker = MockDataConnectionChecker();
    network = Network(mockDataConnectionChecker);
  });
  test("Should forward call to dataConnectionChecker", () {
    //act
    network.hasInternetConnection;
    //assert
    verify(mockDataConnectionChecker.hasConnection);
  });
  test("Should return true when dataConnectionChecker finishes with true",
      () async {
    //arrange
    when(mockDataConnectionChecker.hasConnection)
        .thenAnswer((realInvocation) async => true);
    //act
    final result = await network.hasInternetConnection;
    //assert
    expect(result, true);
  });
  test("Should return false when dataConnectionChecker finishes with false",
      () async {
    //arrange
    when(mockDataConnectionChecker.hasConnection)
        .thenAnswer((realInvocation) async => false);
    //act
    final result = await network.hasInternetConnection;
    //assert
    expect(result, false);
  });
}
