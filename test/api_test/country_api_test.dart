import 'package:country_app/data/constants/countries_api.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:http/http.dart';
import 'package:http/testing.dart';



void main() {

  group('getAllCountries', () {
    test('should return list of countries for a successful api call',
            () async {
      final mockHTTPClient = MockClient((request) async{
        final response = {

        };
        });
      }

      );
  });


}
