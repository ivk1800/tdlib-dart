import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A newly created supergroup or channel
@immutable
class MessageSupergroupChatCreate extends MessageContent {
  const MessageSupergroupChatCreate({
    required this.title,
  });

  /// [title] Title of the supergroup or channel
  final String title;

  static const String constructor = 'messageSupergroupChatCreate';

  static MessageSupergroupChatCreate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSupergroupChatCreate(
      title: json['title'] as String,
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
