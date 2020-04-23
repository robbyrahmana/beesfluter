import 'package:bees_student/helpers/helper.dart';
import 'package:bees_student/providers/provider.dart';
import 'package:bees_student/src/pages/login_page.dart';
import 'package:bees_student/src/pages/main_page.dart';
import 'package:bees_student/src/pages/splash_screen.dart';
import 'package:bees_student/src/themes/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(builder: (_) => AuthProvider()),
        ChangeNotifierProvider<StudentProvider>(
            builder: (_) => StudentProvider()),
        ChangeNotifierProvider<PackageProvider>(
            builder: (_) => PackageProvider()),
        ChangeNotifierProvider<LoaderProvider>(builder: (_) => LoaderProvider())
      ],
      child: MaterialApp(
        title: 'Bees Student',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: Themes.fontFamily,
            primarySwatch: Colors.amber,
            scaffoldBackgroundColor: Colors.white),
        home: Scaffold(
          body: Consumer<AuthProvider>(builder: (context, auth, child) {
            if (UserSession.instance.user != null) {
              return SplashScreen(isLoggedIn: auth.isLoggedIn);
            }
            return Center(child: Text("Splash screen"));
          }),
        ),
        routes: <String, WidgetBuilder>{
          Routes.mainPage: (_) => MainPage(),
          Routes.loginPage: (_) => LoginPage()
        },
        builder: Flavor.isProduction()
            ? null
            : (context, child) {
                return Banner(
                  location: BannerLocation.bottomEnd,
                  message: "dev",
                  color: Colors.green,
                  child: child,
                );
              },
      ),
    );
  }
}
