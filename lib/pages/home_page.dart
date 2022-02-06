import 'package:flutter/material.dart';
// ignore: unused_import
import '../main.dart';
// import 'login_page.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Sushil Gyawali",
              style: TextStyle(
                fontFamily: "cursive",
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
