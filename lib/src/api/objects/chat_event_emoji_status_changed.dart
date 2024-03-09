import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat emoji status was changed
@immutable
class ChatEventEmojiStatusChanged extends ChatEventAction {
  const ChatEventEmojiStatusChanged({
    this.oldEmojiStatus,
    this.newEmojiStatus,
  });

  /// [oldEmojiStatus] Previous emoji status; may be null if none
  final EmojiStatus? oldEmojiStatus;

  /// [newEmojiStatus] New emoji status; may be null if none
  final EmojiStatus? newEmojiStatus;

  static const String constructor = 'chatEventEmojiStatusChanged';

  static ChatEventEmojiStatusChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventEmojiStatusChanged(
      oldEmojiStatus: EmojiStatus.fromJson(
          json['old_emoji_status'] as Map<String, dynamic>?),
      newEmojiStatus: EmojiStatus.fromJson(
          json['new_emoji_status'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_emoji_status': oldEmojiStatus?.toJson(),
        'new_emoji_status': newEmojiStatus?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
