import 'package:flutter/material.dart';
import 'package:par_demo/detail_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        DetailPage.id: (context) => DetailPage(age: 0, salary: 0, name: '',)},
    );
  }
}
