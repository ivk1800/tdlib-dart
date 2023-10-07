import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A story failed to send. If the story sending is canceled, then
/// updateStoryDeleted will be received instead of this update
@immutable
class UpdateStorySendFailed extends Update {
  const UpdateStorySendFailed({
    required this.story,
    required this.error,
    this.errorType,
  });

  /// [story] The failed to send story
  final Story story;

  /// [error] The cause of the story sending failure
  final TdError error;

  /// [errorType] Type of the error; may be null if unknown
  final CanSendStoryResult? errorType;

  static const String constructor = 'updateStorySendFailed';

  static UpdateStorySendFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStorySendFailed(
      story: Story.fromJson(json['story'] as Map<String, dynamic>?)!,
      error: TdError.fromJson(json['error'] as Map<String, dynamic>?)!,
      errorType: CanSendStoryResult.fromJson(
          json['error_type'] as Map<String, dynamic>?),
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
