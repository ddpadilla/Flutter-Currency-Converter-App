import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/presentacion/screens/currency_convert/currency_convert_screen.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to $title  App!'),
            FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CurrencyConvertScreen()));
                },
                label: const Text('Ir al convertidor de divisa'),
                icon: const Icon(Icons.monetization_on)),
          ],
        ),
      ),
    );
  }
}
