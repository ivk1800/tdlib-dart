import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message is from a chat event log
@immutable
class MessageSourceChatEventLog extends MessageSource {
  const MessageSourceChatEventLog();

  static const String constructor = 'messageSourceChatEventLog';

  static MessageSourceChatEventLog? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceChatEventLog();
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
