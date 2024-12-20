import 'package:flutter/material.dart';
import 'package:test_feature_app/screens/finger_print/finger_print.dart';
import 'package:test_feature_app/screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
        routes: {
          '/FingerPrint': (context) => const FingerPrint(),
        });
  }
}
