import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns all active live locations that need to be updated by the
/// application. The list is persistent across application restarts only if
/// the message database is used
/// Returns [Messages]
@immutable
class GetActiveLiveLocationMessages extends TdFunction {
  const GetActiveLiveLocationMessages();

  static const String constructor = 'getActiveLiveLocationMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
