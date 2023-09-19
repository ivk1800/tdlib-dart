import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A story failed to send. If the story sending is canceled, then
/// updateStoryDeleted will be received instead of this update
@immutable
class UpdateStorySendFailed extends Update {
  const UpdateStorySendFailed({
    required this.story,
    this.error,
    required this.errorCode,
    required this.errorMessage,
  });

  /// [story] The failed to send story
  final Story story;

  /// [error] The cause of the failure; may be null if unknown
  final CanSendStoryResult? error;

  /// [errorCode] An error code
  final int errorCode;

  /// [errorMessage] Error message
  final String errorMessage;

  static const String constructor = 'updateStorySendFailed';

  static UpdateStorySendFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStorySendFailed(
      story: Story.fromJson(json['story'] as Map<String, dynamic>?)!,
      error:
          CanSendStoryResult.fromJson(json['error'] as Map<String, dynamic>?),
      errorCode: json['error_code'] as int,
      errorMessage: json['error_message'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story': story.toJson(),
        'error': error?.toJson(),
        'error_code': errorCode,
        'error_message': errorMessage,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
