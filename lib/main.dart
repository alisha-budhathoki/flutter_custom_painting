import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
final Color darkBlue = Color.fromARGB(255, 18, 32, 47);
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets .symmetric(horizontal: 40, vertical: 80),
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
