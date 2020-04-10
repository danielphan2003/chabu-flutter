part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.register() =
      Register;
  const factory SignInFormEvent.signIn() =
      SignIn;
  const factory SignInFormEvent.signInWithGoogle() =
      SignInWithGoogle;
}