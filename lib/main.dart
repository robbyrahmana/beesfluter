import 'package:bees_student/helpers/flavor.dart';
import 'package:bees_student/my_app.dart';
import 'package:flutter/material.dart';

void main() {
  Flavor.appFlavor = FlavorType.PRODUCTION;
  runApp(MyApp());
}
