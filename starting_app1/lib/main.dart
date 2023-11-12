import 'package:flutter/material.dart';
import 'package:starting_app1/mock/mock_location.dart';
import 'package:starting_app1/models/location.dart';
import 'package:starting_app1/screens/location_detail.dart';

void main() {

  final Location mockLocation = MockLocation.FetchAny();
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LocationDetail(mockLocation),
  ));
}