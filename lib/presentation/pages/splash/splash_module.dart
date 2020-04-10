import 'package:flutter_modular/flutter_modular.dart';

import 'splash_widget.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router(
      Modular.initialRoute,
      child: (_, args) => SplashWidget(),
    ),
  ];

  static Inject get to => Inject<SplashModule>.of();
}