import 'package:bees_student/providers/provider.dart';
import 'package:bees_student/src/widgets/widget.dart';
import 'package:flutter/material.dart';

class StreamConsumer<T> extends StatelessWidget {
  StreamConsumer({
    @required this.builder,
  }) : assert(builder != null);

  final Widget Function(BuildContext context, T value) builder;

  @override
  Widget build(BuildContext context) {
    return Consumer<T>(
      builder: (context, _data, _) {
        return _data == null
            ? Container(height: 24, child: Loader())
            : builder(context, _data);
      },
    );
  }
}
