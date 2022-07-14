import 'package:flutter_clean_architecture/core/network/network_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../data/repositories/weather_repository_impl_test.mocks.dart';
import 'network_info_test.mocks.dart';

@GenerateMocks([InternetConnectionChecker], customMocks: [])
void main() {
  late NetworkInfoImpl networkInfoImpl;
  late MockInternetConnectionChecker mockConnectionChecker;
  setUp(() {
    mockConnectionChecker = MockInternetConnectionChecker();
    networkInfoImpl = NetworkInfoImpl(mockConnectionChecker);
  });

  group('isConnected', () {
    test(
      'should forward the call to InternetConnectionChecker.hasConnection',
      () async {
        //arrange
        final tHasConnectionFuture = Future.value(true);
        when(mockConnectionChecker.hasConnection)
            .thenAnswer((realInvocation)  => tHasConnectionFuture);
        // act
        final result =  networkInfoImpl.isConnected;
        // assert
        verify(mockConnectionChecker.hasConnection);
        expect(result, tHasConnectionFuture);
      },
    );
  });
}
