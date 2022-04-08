import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The call was ended during the conversation because the users were
/// disconnected
@immutable
class CallDiscardReasonDisconnected extends CallDiscardReason {
  const CallDiscardReasonDisconnected();

  static const String constructor = 'callDiscardReasonDisconnected';

  static CallDiscardReasonDisconnected? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonDisconnected();
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
