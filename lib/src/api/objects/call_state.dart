import '../tdapi.dart';

/// Describes the current call state
abstract class CallState extends TdObject {
  const CallState();

  static const String CONSTRUCTOR = 'callState';

  /// Inherited by:
  /// [CallStatePending]
  /// [CallStateExchangingKeys]
  /// [CallStateReady]
  /// [CallStateHangingUp]
  /// [CallStateDiscarded]
  /// [CallStateError]
  static CallState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case CallStatePending.CONSTRUCTOR:
        return CallStatePending.fromJson(json);
      case CallStateExchangingKeys.CONSTRUCTOR:
        return CallStateExchangingKeys.fromJson(json);
      case CallStateReady.CONSTRUCTOR:
        return CallStateReady.fromJson(json);
      case CallStateHangingUp.CONSTRUCTOR:
        return CallStateHangingUp.fromJson(json);
      case CallStateDiscarded.CONSTRUCTOR:
        return CallStateDiscarded.fromJson(json);
      case CallStateError.CONSTRUCTOR:
        return CallStateError.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
