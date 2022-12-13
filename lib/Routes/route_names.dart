import 'package:fin_tracker/Screen/home.dart';
import 'package:fin_tracker/Screen/splash.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

 GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Splash();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        ),
      ],
    ),
  ],
);