import 'package:flutter_modular/flutter_modular.dart';

import 'home_widget.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router(
      Modular.initialRoute,
      child: (_, args) => HomeWidget(),
    ),
  ];

  static Inject get to => Inject<HomeModule>.of();
}