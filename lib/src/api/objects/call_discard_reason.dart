import '../tdapi.dart';

/// Describes the reason why a call was discarded
abstract class CallDiscardReason extends TdObject {
  const CallDiscardReason();

  static const String CONSTRUCTOR = 'callDiscardReason';

  /// Inherited by:
  /// [CallDiscardReasonEmpty]
  /// [CallDiscardReasonMissed]
  /// [CallDiscardReasonDeclined]
  /// [CallDiscardReasonDisconnected]
  /// [CallDiscardReasonHungUp]
  static CallDiscardReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case CallDiscardReasonEmpty.CONSTRUCTOR:
        return CallDiscardReasonEmpty.fromJson(json);
      case CallDiscardReasonMissed.CONSTRUCTOR:
        return CallDiscardReasonMissed.fromJson(json);
      case CallDiscardReasonDeclined.CONSTRUCTOR:
        return CallDiscardReasonDeclined.fromJson(json);
      case CallDiscardReasonDisconnected.CONSTRUCTOR:
        return CallDiscardReasonDisconnected.fromJson(json);
      case CallDiscardReasonHungUp.CONSTRUCTOR:
        return CallDiscardReasonHungUp.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
