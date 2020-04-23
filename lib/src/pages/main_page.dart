import 'package:bees_student/providers/provider.dart';
import 'package:bees_student/src/pages/home/home_page.dart';
import 'package:bees_student/src/pages/user/user_page.dart';
import 'package:bees_student/src/widgets/widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  LoaderProvider _loaderProvider;
  AnimationController _animationController;
  Animation<double> _paddingTopAnimation;
  var _currentIndex = 0;

  List<BottomNavItem> _bottomNavigationItems = [
    BottomNavItem(index: 0, icon: FlutterIcon.th_large_outline, title: "Home"),
    BottomNavItem(index: 1, icon: FlutterIcon.chat, title: "Chat"),
    BottomNavItem(index: 2, icon: FlutterIcon.megaphone, title: "Notification"),
    BottomNavItem(index: 3, icon: FlutterIcon.user, title: "User")
  ];

  var _listWidget = [HomePage(), Text("Chat"), Text("History"), UserPage()];

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250))
          ..addListener(() {
            setState(() {});
          });

    _paddingTopAnimation =
        new Tween(begin: 10.0, end: 0.0).animate(_animationController);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _loaderProvider = Provider.of<LoaderProvider>(context);
    print(_loaderProvider.isLoading);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: _paddingTopAnimation.value),
              child: _listWidget[_currentIndex]),
          Center(
            child: _loaderProvider.isLoading ?? false
                ? Container(
                    child: Text("data"),
                  )
                : Container(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(
        items: _bottomNavigationItems,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _animationController.reset();
            _animationController.forward();
          });
        },
      ),
    );
  }
}
