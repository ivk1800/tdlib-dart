import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An automatically scheduled message with video has been successfully sent
/// after conversion
@immutable
class UpdateVideoPublished extends Update {
  const UpdateVideoPublished({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the sent message
  final int messageId;

  static const String constructor = 'updateVideoPublished';

  static UpdateVideoPublished? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateVideoPublished(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
