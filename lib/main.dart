import 'package:flutter/material.dart';
import 'package:movieapp/core/constant/colorConstant.dart';
import 'package:movieapp/core/constant/textConstant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Textconstant.title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colorconstant.primaryColor,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(Textconstant.appName),
      ),
      body: Center(),
    );
  }
}
