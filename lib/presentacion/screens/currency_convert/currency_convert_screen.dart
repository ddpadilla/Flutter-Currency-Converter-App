import 'package:flutter/material.dart';

class CurrencyConvertScreen extends StatelessWidget {
  const CurrencyConvertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency'),
      ),
      body: const Center(
        child: Text('Aqui puedes hacer la conversion!'),
      ),
    );
  }
}
