import '../tdapi.dart';

/// Returns all active sessions of the current user
/// Returns [Sessions]
class GetActiveSessions extends TdFunction {
  GetActiveSessions();

  static const String CONSTRUCTOR = 'getActiveSessions';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
