import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A forwarded message
@immutable
class InputMessageForwarded extends InputMessageContent {
  const InputMessageForwarded({
    required this.fromChatId,
    required this.messageId,
    required this.inGameShare,
    this.copyOptions,
  });

  /// [fromChatId] Identifier for the chat this forwarded message came from
  final int fromChatId;

  /// [messageId] Identifier of the message to forward. A message can be
  /// forwarded only if message.can_be_forwarded
  final int messageId;

  /// [inGameShare] True, if a game message is being shared from a launched
  /// game; applies only to game messages
  final bool inGameShare;

  /// [copyOptions] Options to be used to copy content of the message without
  /// reference to the original sender; pass null to forward the message as
  /// usual
  final MessageCopyOptions? copyOptions;

  static const String constructor = 'inputMessageForwarded';

  static InputMessageForwarded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageForwarded(
      fromChatId: json['from_chat_id'] as int,
      messageId: json['message_id'] as int,
      inGameShare: json['in_game_share'] as bool,
      copyOptions: MessageCopyOptions.fromJson(
          json['copy_options'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'from_chat_id': fromChatId,
        'message_id': messageId,
        'in_game_share': inGameShare,
        'copy_options': copyOptions?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
