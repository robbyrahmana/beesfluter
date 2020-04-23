import 'package:bees_student/src/themes/theme.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlareActor(
      "assets/loader.flr",
      animation: "loading",
      color: Themes.mainColor,
      fit: BoxFit.fill,
    );
  }
}
