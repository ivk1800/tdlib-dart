import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat promotes violence
@immutable
class ChatReportReasonViolence extends ChatReportReason {
  const ChatReportReasonViolence();

  static const String constructor = 'chatReportReasonViolence';

  static ChatReportReasonViolence? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonViolence();
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
