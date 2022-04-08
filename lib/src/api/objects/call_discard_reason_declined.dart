import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The call was ended before the conversation started. It was declined by the
/// other party
@immutable
class CallDiscardReasonDeclined extends CallDiscardReason {
  const CallDiscardReasonDeclined();

  static const String constructor = 'callDiscardReasonDeclined';

  static CallDiscardReasonDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonDeclined();
  }

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
