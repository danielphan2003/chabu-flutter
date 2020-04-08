import 'package:equatable/equatable.dart';
import 'package:super_enum/super_enum.dart';

part 'app_event.g.dart';

@superEnum
enum _AppEvent {
  @object
  Setup,
}

//ignore_for_file: constant_identifier_name