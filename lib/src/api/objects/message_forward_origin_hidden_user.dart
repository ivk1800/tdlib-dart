import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message was originally sent by a user, which is hidden by their
/// privacy settings
@immutable
class MessageForwardOriginHiddenUser extends MessageForwardOrigin {
  const MessageForwardOriginHiddenUser({
    required this.senderName,
  });

  /// [senderName] Name of the sender
  final String senderName;

  static const String constructor = 'messageForwardOriginHiddenUser';

  static MessageForwardOriginHiddenUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForwardOriginHiddenUser(
      senderName: json['sender_name'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_name': senderName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
