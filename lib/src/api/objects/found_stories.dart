import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of stories found by a search
@immutable
class FoundStories extends TdObject {
  const FoundStories({
    required this.totalCount,
    required this.stories,
    required this.nextOffset,
  });

  /// [totalCount] Approximate total number of stories found
  final int totalCount;

  /// [stories] List of stories
  final List<Story> stories;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'foundStories';

  static FoundStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundStories(
      totalCount: json['total_count'] as int,
      stories: List<Story>.from(
          ((json['stories'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Story.fromJson(item))
              .toList()),
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'stories': stories.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
