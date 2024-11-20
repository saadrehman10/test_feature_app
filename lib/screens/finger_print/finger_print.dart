import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({super.key});

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  late final LocalAuthentication auth;
  bool _supportState = false;

  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
    auth.isDeviceSupported().then((bool isSupported) => setState(() {
          _supportState = isSupported;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          _supportState ? const Text('is supported') : const Text('is not supported'),
          ElevatedButton(
              onPressed: _getBiometricOptions,
              child: const Text('get available biometric options')),
        ],
      )),
    );
  }

  Future<void> _getBiometricOptions() async {
    List<BiometricType> bioTypes = await auth.getAvailableBiometrics();
    debugPrint(bioTypes.toString());
    if (!mounted) {
      return;
    } else {
      setState(() {});
    }
  }
}
