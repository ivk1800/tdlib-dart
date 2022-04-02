import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An updated chat title
class MessageChatChangeTitle extends MessageContent {
  MessageChatChangeTitle({required this.title});

  /// [title] New chat title
  final String title;

  static const String CONSTRUCTOR = 'messageChatChangeTitle';

  static MessageChatChangeTitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatChangeTitle(title: json['title']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'title': this.title, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
