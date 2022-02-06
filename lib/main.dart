import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/LoginPage",
      routes: <String, WidgetBuilder>{
        "/home": (context) => const MyHome(),
        "/LoginPage": (context) => const MyLoginPage(),
      },
    );
  }
}
