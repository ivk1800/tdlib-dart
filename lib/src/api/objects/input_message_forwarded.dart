import '../tdapi.dart';

/// A forwarded message
class InputMessageForwarded extends InputMessageContent {
  InputMessageForwarded(
      {required this.fromChatId,
      required this.messageId,
      required this.inGameShare,
      this.copyOptions});

  /// [fromChatId] Identifier for the chat this forwarded message came from
  final int fromChatId;

  /// [messageId] Identifier of the message to forward
  final int messageId;

  /// [inGameShare] True, if a game message is being shared from a launched
  /// game; applies only to game messages
  final bool inGameShare;

  /// [copyOptions] Options to be used to copy content of the message without
  /// reference to the original sender; pass null to forward the message as
  /// usual
  final MessageCopyOptions? copyOptions;

  static const String CONSTRUCTOR = 'inputMessageForwarded';

  static InputMessageForwarded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageForwarded(
        fromChatId: json['from_chat_id'],
        messageId: json['message_id'],
        inGameShare: json['in_game_share'],
        copyOptions: MessageCopyOptions.fromJson(json['copy_options']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'from_chat_id': this.fromChatId,
        'message_id': this.messageId,
        'in_game_share': this.inGameShare,
        'copy_options': this.copyOptions?.toJson(),
        '@type': CONSTRUCTOR
      };
}
