import 'package:bees_student/models/model.dart';
import 'package:bees_student/providers/provider.dart';
import 'package:bees_student/src/themes/theme.dart';
import 'package:bees_student/src/widgets/widget.dart';
import 'package:flutter/material.dart';

class HomeCoursePackagePage extends StatelessWidget {
  var _width, _height;
  PackageProvider _provider;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _provider = Provider.of<PackageProvider>(context);

    return StreamProvider.value(
      value: _provider.streamListPackage(),
      child: StreamConsumer<List<PackageModel>>(
        builder: (context, _data) {
          return _data.length == 0
              ? NoData()
              : Container(
                  height: _height * 0.3,
                  child: HorizontalScrollCard.builder(
                      itemCount: _data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: GradientCard(
                            colors: Gradients.colors[index],
                            child: Text("data"),
                          ),
                        );
                      }),
                );
        },
      ),
    );
  }
}
