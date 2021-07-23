import 'package:flutter/material.dart';
import 'package:project_01/pages/cart_page.dart';
import 'package:project_01/pages/home_page.dart';
import 'package:project_01/pages/login_page.dart';
import 'package:project_01/utilis/routes.dart';
import 'package:project_01/widgets/themes.dart';
import 'pages/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // theme: ThemeData.dark(), or
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // darkTheme: ThemeData(
      //   primarySwatch: Colors.red,
      //   // darkTheme: ThemeData(brightness: Brightness.dark),
      // ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => new LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
