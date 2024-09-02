import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentacion/screens/index.dart'; // se importa el index con todas las rutas
import 'package:go_router/go_router.dart';

final mainRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen('Currency Converter');
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'currency_convert',
          builder: (BuildContext context, GoRouterState state) {
            return CurrencyConvertScreen();
          },
        ),
      ],
    ),
  ],
);
