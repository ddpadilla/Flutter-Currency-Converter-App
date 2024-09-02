import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentacion/screens/currency_convert/widgets/form_converter.dart';

class CurrencyConvertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length:
            4, // Asegúrate de que este número coincida con el número de pestañas y vistas
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.attach_money), text: 'USD'),
                Tab(icon: Icon(Icons.euro), text: 'EURO'),
                Tab(icon: Icon(Icons.currency_bitcoin), text: 'BITCOIN'),
                Tab(icon: Icon(Icons.attach_money), text: 'RUBLE'),
              ],
            ),
            title: const Text('Currency Converter'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              FormConverter(currency: 'USD'),
              FormConverter(currency: 'EURO'),
              FormConverter(currency: 'BITCOIN'),
              FormConverter(currency: 'RUBLE'),
            ],
          ),
        ),
      ),
    );
  }
}
