import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message was originally sent by a known user
@immutable
class MessageOriginUser extends MessageOrigin {
  const MessageOriginUser({
    required this.senderUserId,
  });

  /// [senderUserId] Identifier of the user that originally sent the message
  final int senderUserId;

  static const String constructor = 'messageOriginUser';

  static MessageOriginUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageOriginUser(
      senderUserId: json['sender_user_id'] as int,
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
