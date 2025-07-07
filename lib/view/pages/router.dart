import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_page/view/pages/login/login_page.dart';
import 'package:login_page/view/pages/register/register1.dart';
import 'package:login_page/view/pages/register/register2.dart';

final GoRouter router = GoRouter(
  initialLocation: '/sign_up',
  routes: [
    GoRoute(
      path: '/sign_in',
      builder: (context, State) => LoginPage(),
    ),
    GoRoute(
      path: '/sign_up',
      builder: (context, state) => RegisterPage(),
    ),
    GoRoute(
      path: '/sign_up/next_step',
      builder: (context, state) {
        final data = (state.extra is Map<String, bool>) ? (state.extra as Map<String, bool>) : {};
        return Register2Page(
          isSuplier: data['isSuplier'] ?? false, 
          isBuyer: data['isBuyer'] ?? false
        );
      },
    )
  ]
);