import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../core/colors.dart';
import '../routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            context.router.replace(const SignInRoute());
          },
          unauthenticated: (_) {
            context.router.replace(const DashboardRoute());
          },
        );
      },
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 190,
            width: 200,
            child: Image.asset('assets/images/ananse_logo.png'),
          ),
          Text(
            'Ananse',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: colorPrimary,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      )),
    );
  }
}
