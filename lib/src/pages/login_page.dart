import 'package:bees_student/helpers/helper.dart';
import 'package:bees_student/providers/provider.dart';
import 'package:bees_student/src/pages/register_page.dart';
import 'package:bees_student/src/themes/theme.dart';
import 'package:bees_student/src/widgets/widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _height;
  AuthProvider _authProvider;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: LoginRect3(),
            child: Container(color: Themes.secondAccentColor),
          ),
          ClipPath(
            clipper: LoginRect2(),
            child: Container(color: Themes.mainColor),
          ),
          ClipPath(
            clipper: LoginRect1(),
            child: Container(color: Themes.firstAccentColor),
          ),
          Positioned(
            top: _height * .25,
            left: 32,
            child: Text("Welcome to\nBees Student",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 32)),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(top: _height * .5, left: 16, right: 16),
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
                    SizedBox(height: _height * .05),
                    _loginSubmitSection(),
                    SizedBox(height: _height * .06),
                    _registerForgotSection(context)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginSubmitSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("LOGIN",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Themes.mainColor,
                fontSize: 32)),
        FlatButton(
            padding: EdgeInsets.all(10),
            onPressed: () {
              _authProvider.login("student1@gmail.com", "123456").then((value) {
                if (value != null) {
                  Navigator.pushReplacementNamed(context, Routes.mainPage);
                } else {
                  print("Login fail");
                }
              });
            },
            child: Icon(Icons.arrow_forward, color: Colors.white, size: 32),
            color: Themes.mainColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50))))
      ],
    );
  }

  Widget _registerForgotSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RegisterPage()));
            },
            child: Text("Register Here",
                style: TextStyle(color: Themes.mainColor))),
        GestureDetector(
            onTap: () {},
            child: Text("Forgot Password?",
                style: TextStyle(color: Themes.mainColor)))
      ],
    );
  }
}

class LoginRect1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    var height = 150.0;
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

    var height = 300.0;
    var width = size.width;

    path.moveTo(0.0, 0.0);
    path.lineTo(0.0, height);
    path.quadraticBezierTo(width * .6, height + 100, width * .63, height - 50);
    path.quadraticBezierTo(width * .67, height * .6, width * .8, height * .55);
    path.quadraticBezierTo(width * .95, height * .5, width, 100);
    path.lineTo(width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class LoginRect3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    var height = 300.0;
    var width = size.width;

    path.moveTo(0.0, 0.0);
    path.quadraticBezierTo(width * .6, height, width, height + 50);
    path.lineTo(width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
