import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message failed to send. Be aware that some messages being sent can be
/// irrecoverably deleted, in which case updateDeleteMessages will be received
/// instead of this update
@immutable
class UpdateMessageSendFailed extends Update {
  const UpdateMessageSendFailed({
    required this.message,
    required this.oldMessageId,
    required this.errorCode,
    required this.errorMessage,
  });

  /// [message] The failed to send message
  final Message message;

  /// [oldMessageId] The previous temporary message identifier
  final int oldMessageId;

  /// [errorCode] An error code
  final int errorCode;

  /// [errorMessage] Error message
  final String errorMessage;

  static const String constructor = 'updateMessageSendFailed';

  static UpdateMessageSendFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageSendFailed(
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
      oldMessageId: json['old_message_id'] as int,
      errorCode: json['error_code'] as int,
      errorMessage: json['error_message'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        'old_message_id': oldMessageId,
        'error_code': errorCode,
        'error_message': errorMessage,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
