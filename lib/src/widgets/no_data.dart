import 'package:bees_student/src/themes/theme.dart';
import 'package:flutter/material.dart';

class NoData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Text("No data",
            style: TextStyle(
                fontStyle: FontStyle.italic, color: Themes.mainColor)));
  }
}
