import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains identifier of a story along with identifier of its sender
@immutable
class StoryFullId extends TdObject {
  const StoryFullId({
    required this.senderChatId,
    required this.storyId,
  });

  /// [senderChatId] Identifier of the chat that posted the story
  final int senderChatId;

  /// [storyId] Unique story identifier among stories of the given sender
  final int storyId;

  static const String constructor = 'storyFullId';

  static StoryFullId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryFullId(
      senderChatId: json['sender_chat_id'] as int,
      storyId: json['story_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_chat_id': senderChatId,
        'story_id': storyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
