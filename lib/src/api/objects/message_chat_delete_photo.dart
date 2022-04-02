import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A deleted chat photo
class MessageChatDeletePhoto extends MessageContent {
  const MessageChatDeletePhoto();

  static const String CONSTRUCTOR = 'messageChatDeletePhoto';

  static MessageChatDeletePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageChatDeletePhoto();
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
