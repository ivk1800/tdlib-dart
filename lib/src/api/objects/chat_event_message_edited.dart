import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message was edited
@immutable
class ChatEventMessageEdited extends ChatEventAction {
  const ChatEventMessageEdited({
    required this.oldMessage,
    required this.newMessage,
  });

  /// [oldMessage] The original message before the edit
  final Message oldMessage;

  /// [newMessage] The message after it was edited
  final Message newMessage;

  static const String constructor = 'chatEventMessageEdited';

  static ChatEventMessageEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageEdited(
      oldMessage:
          Message.fromJson(json['old_message'] as Map<String, dynamic>?)!,
      newMessage:
          Message.fromJson(json['new_message'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_message': oldMessage.toJson(),
        'new_message': newMessage.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
