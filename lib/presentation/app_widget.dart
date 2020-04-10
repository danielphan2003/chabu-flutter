import 'package:chabu/application/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChabuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              Modular.get<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        title: 'Chabu',
        // set your initial route
        initialRoute: "/",
        navigatorKey: Modular.navigatorKey,
        // add Modular to manage the routing system
        onGenerateRoute: Modular.generateRoute,
      ),
    );
  }
}
