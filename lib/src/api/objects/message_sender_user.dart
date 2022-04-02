import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The message was sent by a known user
class MessageSenderUser extends MessageSender {
  MessageSenderUser({required this.userId});

  /// [userId] Identifier of the user that sent the message
  final int userId;

  static const String CONSTRUCTOR = 'messageSenderUser';

  static MessageSenderUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSenderUser(userId: json['user_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
