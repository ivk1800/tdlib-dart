import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the current call state
@immutable
abstract class CallState extends TdObject {
  const CallState();

  static const String constructor = 'callState';

  /// Inherited by:
  /// [CallStateDiscarded]
  /// [CallStateError]
  /// [CallStateExchangingKeys]
  /// [CallStateHangingUp]
  /// [CallStatePending]
  /// [CallStateReady]
  static CallState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CallStateDiscarded.constructor:
        return CallStateDiscarded.fromJson(json);
      case CallStateError.constructor:
        return CallStateError.fromJson(json);
      case CallStateExchangingKeys.constructor:
        return CallStateExchangingKeys.fromJson(json);
      case CallStateHangingUp.constructor:
        return CallStateHangingUp.fromJson(json);
      case CallStatePending.constructor:
        return CallStatePending.fromJson(json);
      case CallStateReady.constructor:
        return CallStateReady.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
