import 'package:flutter_modular/flutter_modular.dart';

import 'home_widget.dart';
import '../../../core/bloc/home/bloc.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => HomeBloc()),
  ];

  @override
  List<Router> get routers => [
    Router(
      Modular.initialRoute,
      child: (_, args) => HomeWidget(),
    ),
  ];

  static Inject get to => Inject<HomeModule>.of();
}