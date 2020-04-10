import 'package:chabu/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:chabu/domain/auth/i_auth_facade.dart';
import 'package:chabu/infra/auth/firebase_auth_facade.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'sign_in_widget.dart';

class SignInModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => SignInFormBloc(i.get<FirebaseAuthFacade>())),
  ];

  @override
  List<Router> get routers => [
    Router(
      Modular.initialRoute,
      child: (_, args) => SignInWidget(),
    ),
  ];

  static Inject get to => Inject<SignInModule>.of();
}