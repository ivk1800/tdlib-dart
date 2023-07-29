import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains basic information about a story
@immutable
class StoryInfo extends TdObject {
  const StoryInfo({
    required this.storyId,
    required this.date,
    required this.isForCloseFriends,
  });

  /// [storyId] Unique story identifier among stories of the given sender
  final int storyId;

  /// [date] Point in time (Unix timestamp) when the story was published
  final int date;

  /// [isForCloseFriends] True, if the story is available only to close friends
  final bool isForCloseFriends;

  static const String constructor = 'storyInfo';

  static StoryInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInfo(
      storyId: json['story_id'] as int,
      date: json['date'] as int,
      isForCloseFriends: json['is_for_close_friends'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_id': storyId,
        'date': date,
        'is_for_close_friends': isForCloseFriends,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
