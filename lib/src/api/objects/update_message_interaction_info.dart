import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The information about interactions with a message has changed
@immutable
class UpdateMessageInteractionInfo extends Update {
  const UpdateMessageInteractionInfo({
    required this.chatId,
    required this.messageId,
    this.interactionInfo,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [interactionInfo] New information about interactions with the message; may
  /// be null
  final MessageInteractionInfo? interactionInfo;

  static const String constructor = 'updateMessageInteractionInfo';

  static UpdateMessageInteractionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageInteractionInfo(
      chatId: json['chat_id'],
      messageId: json['message_id'],
      interactionInfo:
          MessageInteractionInfo.fromJson(json['interaction_info']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'interaction_info': interactionInfo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
