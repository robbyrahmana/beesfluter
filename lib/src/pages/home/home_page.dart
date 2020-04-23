import 'package:bees_student/helpers/helper.dart';
import 'package:bees_student/src/pages/home/home_course_package_page.dart';
import 'package:flutter/material.dart';
import 'package:bees_student/src/themes/theme.dart';
import 'package:bees_student/src/widgets/widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var width, height;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(UserSession.instance.user.name,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Themes.mainColor)),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8, bottom: 8),
            child: CircleAvatar(
              backgroundImage: NetworkImage(UserSession.instance.user.image),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
              child: Text("Course Packages",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Themes.mainColor)),
            ),
            HomeCoursePackagePage(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Course Category",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Themes.mainColor)),
                  Text("View All", style: TextStyle(color: Themes.mainColor))
                ],
              ),
            ),
            _courseCategoryList(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
              child: Text("Upcomming Course",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Themes.mainColor)),
            ),
            _upcommingCourseList()
          ],
        ),
      ),
    );
  }

  Widget _courseCategoryList() {
    return Container(
        height: height * 0.3,
        child: HorizontalScrollCard.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: GradientCard(
                  colors: Gradients.colors[index],
                  child: Text("data"),
                ),
              );
            }));
  }

  Widget _upcommingCourseList() {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Container(
            width: width * .86,
            height: height * .2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.blueGrey),
            child: Text("data")),
      ),
    );
  }
}
