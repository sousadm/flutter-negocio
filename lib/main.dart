import 'package:flutter/material.dart';
import 'package:negocio/src/auth/login.dart';

void main() {
  runApp(const NegocioApp());
}

class NegocioApp extends StatelessWidget {
  const NegocioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Negócio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white.withAlpha(20),
      ),
      home: const Login(),
    );
  }
}
