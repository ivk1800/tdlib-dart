import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A message was edited
class ChatEventMessageEdited extends ChatEventAction {
  ChatEventMessageEdited({required this.oldMessage, required this.newMessage});

  /// [oldMessage] The original message before the edit
  final Message oldMessage;

  /// [newMessage] The message after it was edited
  final Message newMessage;

  static const String CONSTRUCTOR = 'chatEventMessageEdited';

  static ChatEventMessageEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageEdited(
        oldMessage: Message.fromJson(json['old_message'])!,
        newMessage: Message.fromJson(json['new_message'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_message': this.oldMessage.toJson(),
        'new_message': this.newMessage.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
