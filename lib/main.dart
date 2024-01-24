import 'package:flutter/material.dart';
import 'package:imi_v2/views/screens/login_screen.dart';
import 'package:imi_v2/views/screens/get_tpt200_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMI',
      theme: ThemeData.dark(),
      home: const LoginScreen(),
    );
  }
}
