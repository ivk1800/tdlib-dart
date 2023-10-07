import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes content and caption of a story. Can be called only if
/// story.can_be_edited == true
/// Returns [Ok]
@immutable
class EditStory extends TdFunction {
  const EditStory({
    required this.storySenderChatId,
    required this.storyId,
    this.content,
    this.areas,
    this.caption,
  });

  /// [storySenderChatId] Identifier of the chat that posted the story
  final int storySenderChatId;

  /// [storyId] Identifier of the story to edit
  final int storyId;

  /// [content] New content of the story; pass null to keep the current content
  final InputStoryContent? content;

  /// [areas] New clickable rectangle areas to be shown on the story media; pass
  /// null to keep the current areas. Areas can't be edited if story content
  /// isn't changed
  final InputStoryAreas? areas;

  /// [caption] New story caption; pass null to keep the current caption
  final FormattedText? caption;

  static const String constructor = 'editStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_sender_chat_id': storySenderChatId,
        'story_id': storyId,
        'content': content?.toJson(),
        'areas': areas?.toJson(),
        'caption': caption?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
