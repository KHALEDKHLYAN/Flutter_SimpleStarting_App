import 'package:starting_app1/models/location_fact.dart';

class Location{
  final String name;
  final String url;
  final List<LocationFact> facts;
  Location({required this.name, required this.url, required this.facts});
}