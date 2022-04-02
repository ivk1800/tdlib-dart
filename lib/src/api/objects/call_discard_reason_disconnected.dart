import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The call was ended during the conversation because the users were
/// disconnected
class CallDiscardReasonDisconnected extends CallDiscardReason {
  const CallDiscardReasonDisconnected();

  static const String CONSTRUCTOR = 'callDiscardReasonDisconnected';

  static CallDiscardReasonDisconnected? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonDisconnected();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
