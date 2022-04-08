import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat contains spam messages
@immutable
class ChatReportReasonSpam extends ChatReportReason {
  const ChatReportReasonSpam();

  static const String constructor = 'chatReportReasonSpam';

  static ChatReportReasonSpam? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonSpam();
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
