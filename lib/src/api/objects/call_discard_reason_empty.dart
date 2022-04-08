import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The call wasn't discarded, or the reason is unknown
@immutable
class CallDiscardReasonEmpty extends CallDiscardReason {
  const CallDiscardReasonEmpty();

  static const String constructor = 'callDiscardReasonEmpty';

  static CallDiscardReasonEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonEmpty();
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
