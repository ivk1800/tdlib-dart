import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A story failed to post. If the story posting is canceled, then
/// updateStoryDeleted will be received instead of this update
@immutable
class UpdateStoryPostFailed extends Update {
  const UpdateStoryPostFailed({
    required this.story,
    required this.error,
    this.errorType,
  });

  /// [story] The failed to post story
  final Story story;

  /// [error] The cause of the story posting failure
  final TdError error;

  /// [errorType] Type of the error; may be null if unknown
  final CanPostStoryResult? errorType;

  static const String constructor = 'updateStoryPostFailed';

  static UpdateStoryPostFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStoryPostFailed(
      story: Story.fromJson(json['story'] as Map<String, dynamic>?)!,
      error: TdError.fromJson(json['error'] as Map<String, dynamic>?)!,
      errorType: CanPostStoryResult.fromJson(
        json['error_type'] as Map<String, dynamic>?,
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story': story.toJson(),
    'error': error.toJson(),
    'error_type': errorType?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
