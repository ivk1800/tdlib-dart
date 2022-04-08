import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An updated chat title
@immutable
class MessageChatChangeTitle extends MessageContent {
  const MessageChatChangeTitle({
    required this.title,
  });

  /// [title] New chat title
  final String title;

  static const String constructor = 'messageChatChangeTitle';

  static MessageChatChangeTitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatChangeTitle(
      title: json['title'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
