// ignore_for_file: non_constant_identifier_names

import 'package:starting_app1/models/location.dart';
import 'package:starting_app1/models/location_fact.dart';

class MockLocation extends Location {
  MockLocation({required super.name, required super.url, required super.facts});

  static Location FetchAny() {
    return Location(
        name: 'Location DetailApp',
        url: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.peakpx.com%2Fen%2Fsearch%3Fq%3Dkuroko%2Bno%2Bbasket&psig=AOvVaw18aREiR4V10Sh9kGOH8wYG&ust=1699869605233000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNiUrvKZvoIDFQAAAAAdAAAAABAI',
        facts: <LocationFact>[
          LocationFact(
            title: 'Summary',
            text:
                '''DON/’T use a leading underscore for identifiers that aren’t private. 
          Dart uses a leading underscore in an identifier to mark members and top-level
           declarations as private. This trains users to associate a leading underscore with one of those kinds of declarations. They see _ and think “private”.
           There is no concept of ''',
          ),
          LocationFact(
            title: 'Summary',
            text:
                '''DON/’T use a leading underscore for identifiers that aren’t private. 
          Dart uses a leading underscore in an identifier to mark members and top-level
           declarations as private. This trains users to associate a leading underscore with one of those kinds of declarations. They see _ and think “private”.
           There is no concept of ''',
          ),
        ]);
  }
}
