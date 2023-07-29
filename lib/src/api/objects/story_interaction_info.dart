import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about interactions with a story
@immutable
class StoryInteractionInfo extends TdObject {
  const StoryInteractionInfo({
    required this.viewCount,
    required this.recentViewerUserIds,
  });

  /// [viewCount] Number of times the story was viewed
  final int viewCount;

  /// [recentViewerUserIds] Identifiers of at most 3 recent viewers of the story
  final List<int> recentViewerUserIds;

  static const String constructor = 'storyInteractionInfo';

  static StoryInteractionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInteractionInfo(
      viewCount: json['view_count'] as int,
      recentViewerUserIds: List<int>.from(
          ((json['recent_viewer_user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'view_count': viewCount,
        'recent_viewer_user_ids':
            recentViewerUserIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
