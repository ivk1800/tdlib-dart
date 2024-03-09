import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a story sent by the chat
@immutable
class ChatStatisticsObjectTypeStory extends ChatStatisticsObjectType {
  const ChatStatisticsObjectTypeStory({
    required this.storyId,
  });

  /// [storyId] Story identifier
  final int storyId;

  static const String constructor = 'chatStatisticsObjectTypeStory';

  static ChatStatisticsObjectTypeStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsObjectTypeStory(
      storyId: json['story_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_id': storyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
