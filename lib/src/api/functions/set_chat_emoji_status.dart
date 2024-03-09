import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the emoji status of a chat. Use
/// chatBoostLevelFeatures.can_set_emoji_status to check whether an emoji
/// status can be set. Requires can_change_info administrator right
/// Returns [Ok]
@immutable
class SetChatEmojiStatus extends TdFunction {
  const SetChatEmojiStatus({
    required this.chatId,
    this.emojiStatus,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [emojiStatus] New emoji status; pass null to remove emoji status
  final EmojiStatus? emojiStatus;

  static const String constructor = 'setChatEmojiStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'emoji_status': emojiStatus?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
