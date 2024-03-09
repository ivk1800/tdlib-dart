import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a story. Call searchPublicChat with the given sender
/// username, then call getStory with the received chat identifier and the
/// given story identifier, then show the story if received
@immutable
class InternalLinkTypeStory extends InternalLinkType {
  const InternalLinkTypeStory({
    required this.storySenderUsername,
    required this.storyId,
  });

  /// [storySenderUsername] Username of the sender of the story
  final String storySenderUsername;

  /// [storyId] Story identifier
  final int storyId;

  static const String constructor = 'internalLinkTypeStory';

  static InternalLinkTypeStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeStory(
      storySenderUsername: json['story_sender_username'] as String,
      storyId: json['story_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_sender_username': storySenderUsername,
        'story_id': storyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
