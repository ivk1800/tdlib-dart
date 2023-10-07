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
    required this.error,
  });

  /// [message] The failed to send message
  final Message message;

  /// [oldMessageId] The previous temporary message identifier
  final int oldMessageId;

  /// [error] The cause of the message sending failure
  final TdError error;

  static const String constructor = 'updateMessageSendFailed';

  static UpdateMessageSendFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageSendFailed(
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
      oldMessageId: json['old_message_id'] as int,
      error: TdError.fromJson(json['error'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        'old_message_id': oldMessageId,
        'error': error.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
