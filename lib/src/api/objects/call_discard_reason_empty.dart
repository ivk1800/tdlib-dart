import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The call wasn't discarded, or the reason is unknown
class CallDiscardReasonEmpty extends CallDiscardReason {
  const CallDiscardReasonEmpty();

  static const String CONSTRUCTOR = 'callDiscardReasonEmpty';

  static CallDiscardReasonEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonEmpty();
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
