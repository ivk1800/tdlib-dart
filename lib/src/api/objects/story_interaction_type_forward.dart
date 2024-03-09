import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A forward of the story as a message
@immutable
class StoryInteractionTypeForward extends StoryInteractionType {
  const StoryInteractionTypeForward({
    required this.message,
  });

  /// [message] The message with story forward
  final Message message;

  static const String constructor = 'storyInteractionTypeForward';

  static StoryInteractionTypeForward? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInteractionTypeForward(
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
