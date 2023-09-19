import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes content and caption of a previously sent story
/// Returns [Ok]
@immutable
class EditStory extends TdFunction {
  const EditStory({
    required this.storyId,
    this.content,
    this.areas,
    this.caption,
  });

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
