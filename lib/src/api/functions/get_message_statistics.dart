import '../tdapi.dart';

/// Returns detailed statistics about a message. Can be used only if
/// Message.can_get_statistics == true
/// Returns [MessageStatistics]
class GetMessageStatistics extends TdFunction {
  GetMessageStatistics(
      {required this.chatId, required this.messageId, required this.isDark});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;

  static const String CONSTRUCTOR = 'getMessageStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'is_dark': this.isDark,
        '@type': CONSTRUCTOR
      };
}
