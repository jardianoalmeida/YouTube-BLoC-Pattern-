import 'package:flutter/material.dart';
import 'package:fluttertube/api.dart';

import 'screens/home.dart';

void main() {
  Api api = Api();
  api.search("search");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
