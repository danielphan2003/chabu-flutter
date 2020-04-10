import 'package:chabu/application/auth/auth_bloc.dart';
import 'package:chabu/domain/auth/i_auth_facade.dart';
import 'package:chabu/infra/auth/firebase_auth_facade.dart';
import 'package:chabu/infra/auth/firebase_user_mapper.dart';
import 'package:chabu/infra/core/firebase_module.dart';
import 'package:chabu/presentation/pages/home/home_module.dart';
import 'package:chabu/presentation/pages/splash/splash_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import 'pages/sign_in/sign_in_module.dart';

class AppModule extends MainModule {
  // here will be any class you want to inject into your project (eg bloc, dependency)
  @override
  List<Bind> get binds => [
    Bind((i) => AuthBloc(i.get<FirebaseAuthFacade>())),
    Bind((i) => FirebaseAuthFacade(
      i.get<FirebaseModule>().firebaseAuth, 
      i.get<FirebaseModule>().googleSignIn,
      i.get<FirebaseUserMapper>()), lazy: true, singleton: true),
    Bind((i) => FirebaseModule(), lazy: true, singleton: true),
    Bind((i) => FirebaseUserMapper(), lazy: true, singleton: true),
  ];

  // here will be the routes of your module
  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, module: SplashModule()),
    Router('/home', module: HomeModule()),
    Router('/signin', module: SignInModule()),
  ];

  // add your main widget here
  @override
  Widget get bootstrap => ChabuApp();

  static Inject get to => Inject<AppModule>.of();
}