import 'package:flutter/material.dart';
import 'package:starting_app1/screens/location_detail.dart';
import 'package:starting_app1/mock/mock_location.dart';

void main() {
  // Assuming MockLocation.fetchAll() returns a List<Location>
  final mockLocations = MockLocation.fetchAll();

  // Pass a valid Location object to LocationDetail
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LocationDetail(mockLocations[0]), // Adjust index as needed
  ));
}
