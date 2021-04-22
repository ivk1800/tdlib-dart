import '../tdapi.dart';

/// Returns all active live locations that should be updated by the
/// application. The list is persistent across application restarts only if
/// the message database is used
/// Returns [Messages]
class GetActiveLiveLocationMessages extends TdFunction {
  GetActiveLiveLocationMessages();

  static const String CONSTRUCTOR = 'getActiveLiveLocationMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
