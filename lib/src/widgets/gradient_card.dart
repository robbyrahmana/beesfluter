import 'package:bees_student/src/themes/theme.dart';
import 'package:flutter/material.dart';

class GradientCard extends StatelessWidget {
  final Widget child;
  final List<Color> colors;

  GradientCard({@required this.child, @required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(Themes.borderRadius)),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: colors)),
        child: child);
  }
}
