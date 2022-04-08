import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The call was ended before the conversation started. It was canceled by the
/// caller or missed by the other party
@immutable
class CallDiscardReasonMissed extends CallDiscardReason {
  const CallDiscardReasonMissed();

  static const String constructor = 'callDiscardReasonMissed';

  static CallDiscardReasonMissed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonMissed();
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
