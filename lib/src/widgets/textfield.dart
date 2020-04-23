import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final InputDecoration inputDecoration;
  final bool isPassword;

  TextFields({this.inputDecoration, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blueGrey,
      style: TextStyle(fontSize: 18, color: Colors.black87),
      maxLines: 1,
      obscureText: isPassword,
      decoration: inputDecoration,
    );
  }
}
