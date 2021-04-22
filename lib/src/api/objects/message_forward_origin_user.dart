import '../tdapi.dart';

/// The message was originally sent by a known user
class MessageForwardOriginUser extends MessageForwardOrigin {
  MessageForwardOriginUser({required this.senderUserId});

  /// [senderUserId] Identifier of the user that originally sent the message
  final int senderUserId;

  static const String CONSTRUCTOR = 'messageForwardOriginUser';

  static MessageForwardOriginUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForwardOriginUser(senderUserId: json['sender_user_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sender_user_id': this.senderUserId, '@type': CONSTRUCTOR};
}
