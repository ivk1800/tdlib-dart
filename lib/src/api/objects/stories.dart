import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of stories
@immutable
class Stories extends TdObject {
  const Stories({
    required this.totalCount,
    required this.stories,
    required this.pinnedStoryIds,
  });

  /// [totalCount] Approximate total number of stories found
  final int totalCount;

  /// [stories] The list of stories
  final List<Story> stories;

  /// [pinnedStoryIds] Identifiers of the pinned stories; returned only in
  /// getChatPostedToChatPageStories with from_story_id == 0
  final List<int> pinnedStoryIds;

  static const String constructor = 'stories';

  static Stories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Stories(
      totalCount: json['total_count'] as int,
      stories: List<Story>.from(
          ((json['stories'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Story.fromJson(item))
              .toList()),
      pinnedStoryIds: List<int>.from(
          ((json['pinned_story_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'stories': stories.map((item) => item.toJson()).toList(),
        'pinned_story_ids': pinnedStoryIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
