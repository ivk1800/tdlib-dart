import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Topic containing messages forwarded from a specific chat
@immutable
class SavedMessagesTopicTypeSavedFromChat extends SavedMessagesTopicType {
  const SavedMessagesTopicTypeSavedFromChat({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  static const String constructor = 'savedMessagesTopicTypeSavedFromChat';

  static SavedMessagesTopicTypeSavedFromChat? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SavedMessagesTopicTypeSavedFromChat(
      chatId: json['chat_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
