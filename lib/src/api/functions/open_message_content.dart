import '../tdapi.dart';

/// Informs TDLib that the message content has been opened (e.g., the user has
/// opened a photo, video, document, location or venue, or has listened to an
/// audio file or voice note message). An updateMessageContentOpened update
/// will be generated if something has changed
/// Returns [Ok]
class OpenMessageContent extends TdFunction {
  OpenMessageContent({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Identifier of the message with the opened content
  final int messageId;

  static const String CONSTRUCTOR = 'openMessageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR
      };
}
