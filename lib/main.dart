import 'package:flutter/material.dart';
import 'package:untitled/fourth_screen.dart';
import 'package:untitled/second_screen.dart';

import 'first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Первая практическая',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FourthScreen(),
      routes: <String, WidgetBuilder>{
        '/first': (BuildContext context) => const FirstScreen(),
        '/second': (BuildContext context) => const SecondScreen(),
        '/fourth': (BuildContext context) => const FourthScreen(),
      },
      initialRoute: '/fourth',
    );
  }
}
