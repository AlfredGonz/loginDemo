import 'package:flutter/material.dart';
import 'package:login_demo/login_page.dart';
import 'package:login_demo/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

final routes = <String, WidgetBuilder>
{
  LoginPage.tag: (context) => LoginPage(),
  HomePage.tag: (context) => HomePage(),
};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}

