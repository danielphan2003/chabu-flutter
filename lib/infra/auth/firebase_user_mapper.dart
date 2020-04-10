import 'package:chabu/domain/auth/user.dart';
import 'package:chabu/domain/auth/value_objects.dart';
import 'package:chabu/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseUserMapper {
  User toDomain(FirebaseUser _) {
    return _ == null
        ? null
        : User(
            id: UniqueId.fromFirebaseId(_.uid),
            name: StringSingleLine(_.displayName ?? _.email.split('@').first),
            emailAddress: EmailAddress(_.email),
          );
  }
}