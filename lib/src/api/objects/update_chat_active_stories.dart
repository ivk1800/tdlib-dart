import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of active stories posted by a specific chat has changed
@immutable
class UpdateChatActiveStories extends Update {
  const UpdateChatActiveStories({
    required this.activeStories,
  });

  /// [activeStories] The new list of active stories
  final ChatActiveStories activeStories;

  static const String constructor = 'updateChatActiveStories';

  static UpdateChatActiveStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatActiveStories(
      activeStories: ChatActiveStories.fromJson(
          json['active_stories'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'active_stories': activeStories.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
