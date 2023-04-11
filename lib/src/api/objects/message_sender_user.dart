import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message was sent by a known user
@immutable
class MessageSenderUser extends MessageSender {
  const MessageSenderUser({
    required this.userId,
  });

  /// [userId] Identifier of the user that sent the message
  final int userId;

  static const String constructor = 'messageSenderUser';

  static MessageSenderUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSenderUser(
      userId: json['user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
