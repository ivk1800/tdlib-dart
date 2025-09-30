import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes cover of a video story. Can be called only if story.can_be_edited
/// == true and the story isn't being edited now
/// Returns [Ok]
@immutable
class EditStoryCover extends TdFunction {
  const EditStoryCover({
    required this.storyPosterChatId,
    required this.storyId,
    required this.coverFrameTimestamp,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Identifier of the story to edit
  final int storyId;

  /// [coverFrameTimestamp] New timestamp of the frame, which will be used as
  /// video thumbnail
  final double coverFrameTimestamp;

  static const String constructor = 'editStoryCover';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    'cover_frame_timestamp': coverFrameTimestamp,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
