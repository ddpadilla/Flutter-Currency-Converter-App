import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/domain/models/currency.dart';

class FormConverter extends StatefulWidget {
  final String currency;
  const FormConverter({super.key, required this.currency});

  @override
  State<FormConverter> createState() => _FormConverterState();
}

class _FormConverterState extends State<FormConverter> {
  List<Currency> currencies = [
    Currency(name: 'USD', value: 24.89),
    Currency(name: 'EURO', value: 27.45),
    Currency(name: 'BITCOIN', value: 102023),
    Currency(name: 'RUBLE', value: 73.50),
  ];

  double _amount = 0.0;
  double _result = 0.0;

  convertAmount(String currency) {
    for (var i = 0; i < currencies.length; i++) {
      if (currencies[i].name == currency) {
        setState(() {
          _result = _amount * currencies[i].value;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String currency = widget.currency;
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ], // Only numbers can be entered, no permite ingresar letras solo numeros
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Amount',
              hintText: 'Enter amount to convert',
            ),
            onChanged: (value) => setState(() {
              if (double.tryParse(value) != null) {
                _amount = double.parse(value);
              }
            }),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Tasa de cambio ($currency): ${currencies.where((element) => element.name == currency).first.value}",
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              convertAmount(currency);
            },
            child: const Text('Convert'),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Result: $_result',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}
