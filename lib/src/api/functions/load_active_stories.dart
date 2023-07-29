import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Loads more active stories from a story list. The loaded stories will be
/// sent through updates. Active stories are sorted by the pair
/// (active_stories.order, active_stories.story_sender_chat_id) in descending
/// order. Returns a 404 error if all active stories have been loaded
/// Returns [Ok]
@immutable
class LoadActiveStories extends TdFunction {
  const LoadActiveStories({
    required this.storyList,
  });

  /// [storyList] The story list in which to load active stories
  final StoryList storyList;

  static const String constructor = 'loadActiveStories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_list': storyList.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
