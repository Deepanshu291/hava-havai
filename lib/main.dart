import 'package:flutter/material.dart';
import 'package:marvelapp/Screen/Homepage.dart';
import 'package:marvelapp/Widgets/frames.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: HomePage(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
