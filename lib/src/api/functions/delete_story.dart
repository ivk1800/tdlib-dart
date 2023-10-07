import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes a previously sent story. Can be called only if
/// story.can_be_deleted == true
/// Returns [Ok]
@immutable
class DeleteStory extends TdFunction {
  const DeleteStory({
    required this.storySenderChatId,
    required this.storyId,
  });

  /// [storySenderChatId] Identifier of the chat that posted the story
  final int storySenderChatId;

  /// [storyId] Identifier of the story to delete
  final int storyId;

  static const String constructor = 'deleteStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_sender_chat_id': storySenderChatId,
        'story_id': storyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
