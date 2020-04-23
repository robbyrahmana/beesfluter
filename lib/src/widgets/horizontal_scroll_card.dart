import 'package:bees_student/src/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';

class HorizontalScrollCard extends StatefulWidget {
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;

  HorizontalScrollCard.builder({
    @required this.itemBuilder,
    @required this.itemCount,
  });

  @override
  _HorizontalScrollCardState createState() => _HorizontalScrollCardState();
}

class _HorizontalScrollCardState extends State<HorizontalScrollCard> {
  var _width;
  PageController _horizontalController = PageController(viewportFraction: .6);
  var _currentIndex = 0.0;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;

    _horizontalController.addListener(() {
      setState(() {
        _currentIndex = _horizontalController.page;
      });
    });

    return Stack(
      children: <Widget>[
        Positioned.fill(
          left: -_width * ((1 - _horizontalController.viewportFraction) / 2),
          child: PageView.builder(
              pageSnapping: true,
              physics: BouncingScrollPhysics(),
              itemCount: widget.itemCount,
              controller: _horizontalController,
              itemBuilder: (context, index) {
                return widget.itemBuilder(context, index);
              }),
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 32),
              child: SliderIndicator(
                  length: widget.itemCount,
                  activeIndex: _currentIndex.round(),
                  displayIndicatorColor: Colors.grey,
                  displayIndicatorActiveColor: Themes.mainColor,
                  displayIndicatorSize: 10),
            ))
      ],
    );
  }
}
