import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about original story that was reposted
@immutable
class StoryRepostInfo extends TdObject {
  const StoryRepostInfo({
    required this.origin,
    required this.isContentModified,
  });

  /// [origin] Origin of the story that was reposted
  final StoryOrigin origin;

  /// [isContentModified] True, if story content was modified during reposting;
  /// otherwise, story wasn't modified
  final bool isContentModified;

  static const String constructor = 'storyRepostInfo';

  static StoryRepostInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryRepostInfo(
      origin: StoryOrigin.fromJson(json['origin'] as Map<String, dynamic>?)!,
      isContentModified: json['is_content_modified'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'origin': origin.toJson(),
        'is_content_modified': isContentModified,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
