import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviez_streaming/page/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Movie Streaming',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MovieHome(),
    );
  }
}