import 'package:flutter/material.dart';
import 'package:jokeapp/halaman_adaptive.dart';
import 'package:jokeapp/halaman_daftarlistjoke.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListJoke()
    );
  }
}