import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of story viewers
@immutable
class StoryViewers extends TdObject {
  const StoryViewers({
    required this.totalCount,
    required this.totalReactionCount,
    required this.viewers,
    required this.nextOffset,
  });

  /// [totalCount] Approximate total number of story viewers found
  final int totalCount;

  /// [totalReactionCount] Approximate total number of reactions set by found
  /// story viewers
  final int totalReactionCount;

  /// [viewers] List of story viewers
  final List<StoryViewer> viewers;

  /// [nextOffset] The offset for the next request. If empty, there are no more
  /// results
  final String nextOffset;

  static const String constructor = 'storyViewers';

  static StoryViewers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryViewers(
      totalCount: json['total_count'] as int,
      totalReactionCount: json['total_reaction_count'] as int,
      viewers: List<StoryViewer>.from(
          ((json['viewers'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StoryViewer.fromJson(item))
              .toList()),
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'total_reaction_count': totalReactionCount,
        'viewers': viewers.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
