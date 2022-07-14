import 'package:flutter/material.dart';
import 'package:navproj/one_page.dart';
import 'package:navproj/two_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green[300],
      ),
      initialRoute: '/',
      routes: {'/': (_) => const OnePage(), '/twopage': (_) => const TwoPage()},
    );
  }
}
