import 'package:bees_student/providers/provider.dart';
import 'package:flutter/material.dart';

abstract class CustomStatefull extends StatefulWidget {
  @protected
  State customCreateState();

  @override
  _CustomStatefullState createState() => _CustomStatefullState();
}

class _CustomStatefullState extends State<CustomStatefull> {
  LoaderProvider _loaderProvider;

  @override
  Widget build(BuildContext context) {
    print(_loaderProvider.isLoading);
    _loaderProvider = Provider.of<LoaderProvider>(context);

    if (_loaderProvider.isLoading) {
      showDialog(
          context: context,
          builder: (context) {
            return Container(child: Text("Loading..."));
          });
    }
    return widget.customCreateState().build(context);
  }
}
