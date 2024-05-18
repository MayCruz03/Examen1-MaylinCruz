import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:examen1_maylincruz/screens/home.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
    ),
  ],
);
