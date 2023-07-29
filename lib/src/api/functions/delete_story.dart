import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes a previously sent story
/// Returns [Ok]
@immutable
class DeleteStory extends TdFunction {
  const DeleteStory({
    required this.storyId,
  });

  /// [storyId] Identifier of the story to delete
  final int storyId;

  static const String constructor = 'deleteStory';

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
