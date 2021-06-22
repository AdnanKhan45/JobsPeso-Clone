import 'package:flutter/material.dart';
import 'package:job_peso/pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      title: "JobsPeso",
      home: HomePage(),
    );
  }
}
