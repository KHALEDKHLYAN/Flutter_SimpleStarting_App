import 'package:flutter/material.dart';
import 'package:starting_app1/mock/mock_location.dart';
import 'package:starting_app1/screens/location_list.dart';

void main() {
  final mockLocations = MockLocation.fetchAll();

  return runApp(MaterialApp(home: LocationList(mockLocations)));
}