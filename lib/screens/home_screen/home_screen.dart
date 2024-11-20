import 'package:flutter/material.dart';
import 'package:test_feature_app/utils/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/FingerPrint');
                },
                child: const Text(
                  ButtonText.fingerPrintPage,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
