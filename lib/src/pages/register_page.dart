import 'package:bees_student/src/themes/theme.dart';
import 'package:bees_student/src/widgets/widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(color: Colors.white),
          ClipPath(
            clipper: LoginRect2(),
            child: Container(color: Themes.secondAccentColor),
          ),
          ClipPath(
            clipper: LoginRect1(),
            child: Container(color: Themes.mainColor),
          ),
          Positioned(
            top: height * .25,
            left: 32,
            child: Text("Register New User",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 32)),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(top: height * .4, left: 16, right: 16),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(Themes.borderRadius)),
                    color: Colors.white60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFields(
                      inputDecoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(Icons.mail_outline)),
                    ),
                    SizedBox(height: 20),
                    TextFields(
                      isPassword: true,
                      inputDecoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock_outline)),
                    ),
                    SizedBox(height: 20),
                    TextFields(
                      isPassword: true,
                      inputDecoration: InputDecoration(
                          labelText: "Re-Type Password",
                          prefixIcon: Icon(Icons.lock_outline)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * .85, left: 32, right: 32),
            child: _registerSubmitSection,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0, left: 8),
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white, size: 32),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          )
        ],
      ),
    );
  }

  Widget get _registerSubmitSection {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(),
        FlatButton(
            padding: EdgeInsets.all(10),
            onPressed: () {},
            child: Icon(Icons.arrow_forward, color: Colors.white, size: 32),
            color: Themes.mainColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50))))
      ],
    );
  }
}

class LoginRect1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    var height = 250.0;
    var width = size.width - 60;

    path.moveTo(0.0, 0.0);
    path.lineTo(0.0, height);
    path.quadraticBezierTo(width * .1, height - 10, width * .15, height * .7);
    path.quadraticBezierTo(width * .24, height * .2, width * .8, height * .18);
    path.quadraticBezierTo(width - 10, height * .15, width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class LoginRect2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    var height = size.height;
    var width = size.width;

    path.moveTo(0.0, 0.0);
    path.lineTo(0.0, height);
    path.lineTo(50, height + 40);
    path.quadraticBezierTo(width * .2, height - 10, width * .35, height - 20);
    path.quadraticBezierTo(width * .6, height - 30, width * .75, height - 80);
    path.quadraticBezierTo(width * .9, height - 130, width, height - 100);
    path.lineTo(width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
