import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import '../core/bloc/app/bloc.dart';
import 'modules/home/home_module.dart';

class AppModule extends MainModule {

  // here will be any class you want to inject into your project (eg bloc, dependency)
  @override
  List<Bind> get binds => [
    Bind((i) => AppBloc())
  ];

  // here will be the routes of your module
  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, module: HomeModule()),
  ];

// add your main widget here
  @override
  Widget get bootstrap => ChabuApp();

  static Inject get to => Inject<AppModule>.of();
}