import '../tdapi.dart';

/// Describes the type of a call server
abstract class CallServerType extends TdObject {
  const CallServerType();

  static const String CONSTRUCTOR = 'callServerType';

  /// Inherited by:
  /// [CallServerTypeTelegramReflector]
  /// [CallServerTypeWebrtc]
  static CallServerType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case CallServerTypeTelegramReflector.CONSTRUCTOR:
        return CallServerTypeTelegramReflector.fromJson(json);
      case CallServerTypeWebrtc.CONSTRUCTOR:
        return CallServerTypeWebrtc.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
