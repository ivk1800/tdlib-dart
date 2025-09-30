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
    required this.replaceVideoStartTimestamp,
    required this.newVideoStartTimestamp,
    this.copyOptions,
  });

  /// [fromChatId] Identifier for the chat this forwarded message came from
  final int fromChatId;

  /// [messageId] Identifier of the message to forward. A message can be
  /// forwarded only if messageProperties.can_be_forwarded
  final int messageId;

  /// [inGameShare] Pass true if a game message is being shared from a launched
  /// game; applies only to game messages
  final bool inGameShare;

  /// [replaceVideoStartTimestamp] Pass true to replace video start timestamp in
  /// the forwarded message
  final bool replaceVideoStartTimestamp;

  /// [newVideoStartTimestamp] The new video start timestamp; ignored if
  /// replace_video_start_timestamp == false
  final int newVideoStartTimestamp;

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
      replaceVideoStartTimestamp: json['replace_video_start_timestamp'] as bool,
      newVideoStartTimestamp: json['new_video_start_timestamp'] as int,
      copyOptions: MessageCopyOptions.fromJson(
        json['copy_options'] as Map<String, dynamic>?,
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'from_chat_id': fromChatId,
    'message_id': messageId,
    'in_game_share': inGameShare,
    'replace_video_start_timestamp': replaceVideoStartTimestamp,
    'new_video_start_timestamp': newVideoStartTimestamp,
    'copy_options': copyOptions?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
