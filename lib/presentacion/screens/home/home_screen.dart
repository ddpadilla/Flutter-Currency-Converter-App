import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convertidor de Moneda'),
      ),
      body: const Center(
        child: Text('Welcome to the Currency converter App!'),
      ),
    );
  }
}
