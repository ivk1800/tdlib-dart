import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat's custom emoji for reply background was changed
@immutable
class ChatEventBackgroundCustomEmojiChanged extends ChatEventAction {
  const ChatEventBackgroundCustomEmojiChanged({
    required this.oldBackgroundCustomEmojiId,
    required this.newBackgroundCustomEmojiId,
  });

  /// [oldBackgroundCustomEmojiId] Previous identifier of the custom emoji; 0 if
  /// none
  final int oldBackgroundCustomEmojiId;

  /// [newBackgroundCustomEmojiId] New identifier of the custom emoji; 0 if none
  final int newBackgroundCustomEmojiId;

  static const String constructor = 'chatEventBackgroundCustomEmojiChanged';

  static ChatEventBackgroundCustomEmojiChanged? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventBackgroundCustomEmojiChanged(
      oldBackgroundCustomEmojiId:
          int.tryParse(json['old_background_custom_emoji_id']) ?? 0,
      newBackgroundCustomEmojiId:
          int.tryParse(json['new_background_custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_background_custom_emoji_id': oldBackgroundCustomEmojiId.toString(),
        'new_background_custom_emoji_id': newBackgroundCustomEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
