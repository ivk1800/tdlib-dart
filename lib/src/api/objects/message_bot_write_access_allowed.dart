import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user allowed the bot to send messages
@immutable
class MessageBotWriteAccessAllowed extends MessageContent {
  const MessageBotWriteAccessAllowed();

  static const String constructor = 'messageBotWriteAccessAllowed';

  static MessageBotWriteAccessAllowed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageBotWriteAccessAllowed();
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
