import 'package:bees_student/src/themes/theme.dart';
import 'package:bees_student/src/widgets/models/model.dart';
import 'package:flutter/material.dart';

typedef HandleTap = void Function(int index);

class BottomNav extends StatefulWidget {
  final List<BottomNavItem> items;
  final HandleTap onTap;

  BottomNav({@required this.items, @required this.onTap});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      height: 56,
      decoration: BoxDecoration(
          color: Themes.mainColor,
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 1, blurRadius: 2)
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Themes.borderRadius),
              topRight: Radius.circular(Themes.borderRadius))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widget.items.map((data) {
          return Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius:
                  BorderRadius.all(Radius.circular(Themes.borderRadius)),
              splashFactory: InkRipple.splashFactory,
              onTap: () {
                setState(() {
                  _currentIndex = data.index;
                });
                widget.onTap(_currentIndex);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(data.icon,
                        size: 20,
                        color: _currentIndex == data.index
                            ? Colors.white
                            : Colors.white30),
                    SizedBox(width: 8),
                    _currentIndex == data.index
                        ? Text(data.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white))
                        : Container(),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
