import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The call was ended before the conversation started. It was canceled by the
/// caller or missed by the other party
class CallDiscardReasonMissed extends CallDiscardReason {
  const CallDiscardReasonMissed();

  static const String CONSTRUCTOR = 'callDiscardReasonMissed';

  static CallDiscardReasonMissed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonMissed();
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
