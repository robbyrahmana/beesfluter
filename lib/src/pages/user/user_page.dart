import 'package:bees_student/helpers/helper.dart';
import 'package:bees_student/providers/provider.dart';
import 'package:bees_student/src/themes/theme.dart';
import 'package:bees_student/src/widgets/widget.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  AuthProvider _authProvider;
  LoaderProvider _loaderProvider;

  @override
  Widget build(BuildContext context) {
    _authProvider = Provider.of<AuthProvider>(context);
    _loaderProvider = Provider.of<LoaderProvider>(context);

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 54.0),
          child: Column(
            children: <Widget>[
              _summary(),
              SizedBox(
                height: 20,
              ),
              _contact(),
              SizedBox(
                height: 24,
              ),
              _courseSummary(),
              SizedBox(
                height: 24,
              ),
              _actions()
            ],
          ),
        ),
      ),
    );
  }

  Widget _summary() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(UserSession.instance.user.image))),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Robby Rahmana",
                  style: TextStyle(
                      fontSize: 20,
                      color: Themes.mainColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text("SMA", style: TextStyle(color: Colors.black45))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _contact() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(FlutterIcon.phone, color: Themes.mainColor),
              SizedBox(
                width: 12,
              ),
              Text("(+62) 81378320648", style: TextStyle(color: Colors.black45))
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: <Widget>[
              Icon(FlutterIcon.mail, color: Themes.mainColor),
              SizedBox(
                width: 12,
              ),
              Text("robbyrahmana79@gmail.com",
                  style: TextStyle(color: Colors.black45))
            ],
          )
        ],
      ),
    );
  }

  Widget _courseSummary() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.black45, width: .5),
                    bottom: BorderSide(color: Colors.black45, width: .5),
                    right: BorderSide(color: Colors.black45, width: .5))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text("29",
                      style: TextStyle(
                          color: Themes.mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Complete", style: TextStyle(color: Colors.black45))
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.black45, width: .5),
                    bottom: BorderSide(color: Colors.black45, width: .5))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text("3",
                      style: TextStyle(
                          color: Themes.mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  SizedBox(
                    height: 8,
                  ),
                  Text("On Going", style: TextStyle(color: Colors.black45))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _actions() {
    return Column(
      children: <Widget>[
        _actionBuilder(
            text: "Referral",
            icon: FlutterIcon.group,
            color: Themes.mainColor,
            onTap: () {
              _loaderProvider.setIsLoading(true);
            }),
        _actionBuilder(
            text: "Setting",
            icon: FlutterIcon.setting,
            color: Themes.mainColor,
            onTap: () {}),
        _actionBuilder(
            text: "Contact Us",
            icon: FlutterIcon.paper_plane,
            color: Themes.mainColor,
            onTap: () {}),
        _actionBuilder(
            text: "Rate Us",
            icon: FlutterIcon.thumbs_up,
            color: Themes.mainColor,
            onTap: () {}),
        SizedBox(
          height: 8,
        ),
        Divider(
          height: 1,
          color: Colors.red,
        ),
        SizedBox(
          height: 8,
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 12.0),
            child: Row(
              children: <Widget>[
                Icon(
                  FlutterIcon.bug_report,
                  color: Colors.red,
                  size: 24,
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  "Report Issue",
                  style: TextStyle(fontSize: 16, color: Colors.red),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            _authProvider.logout().whenComplete(() {
              Navigator.pushReplacementNamed(context, Routes.loginPage);
            });
          },
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 34.0, vertical: 12.0),
            child: Row(
              children: <Widget>[
                Icon(
                  FlutterIcon.off,
                  color: Colors.red,
                  size: 18,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Logout",
                  style: TextStyle(fontSize: 16, color: Colors.red),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _actionBuilder(
      {String text,
      IconData icon,
      Color color,
      double size = 20,
      @required GestureTapCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: color,
              size: size,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 16, color: color),
            )
          ],
        ),
      ),
    );
  }
}
