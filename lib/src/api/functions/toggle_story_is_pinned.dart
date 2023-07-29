import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether a story is accessible after expiration
/// Returns [Ok]
@immutable
class ToggleStoryIsPinned extends TdFunction {
  const ToggleStoryIsPinned({
    required this.storyId,
    required this.isPinned,
  });

  /// [storyId] Identifier of the story
  final int storyId;

  /// [isPinned] Pass true to make the story accessible after expiration; pass
  /// false to make it private
  final bool isPinned;

  static const String constructor = 'toggleStoryIsPinned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_id': storyId,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
