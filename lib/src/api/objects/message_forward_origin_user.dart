import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message was originally sent by a known user
@immutable
class MessageForwardOriginUser extends MessageForwardOrigin {
  const MessageForwardOriginUser({
    required this.senderUserId,
  });

  /// [senderUserId] Identifier of the user that originally sent the message
  final int senderUserId;

  static const String constructor = 'messageForwardOriginUser';

  static MessageForwardOriginUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForwardOriginUser(
      senderUserId: json['sender_user_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_user_id': senderUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
