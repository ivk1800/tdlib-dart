import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message has been successfully sent
@immutable
class UpdateMessageSendSucceeded extends Update {
  const UpdateMessageSendSucceeded({
    required this.message,
    required this.oldMessageId,
  });

  /// [message] The sent message. Usually only the message identifier, date, and
  /// content are changed, but almost all other fields can also change
  final Message message;

  /// [oldMessageId] The previous temporary message identifier
  final int oldMessageId;

  static const String constructor = 'updateMessageSendSucceeded';

  static UpdateMessageSendSucceeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageSendSucceeded(
      message: Message.fromJson(json['message'])!,
      oldMessageId: json['old_message_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        'old_message_id': oldMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
