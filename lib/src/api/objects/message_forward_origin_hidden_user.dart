import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The message was originally sent by a user, which is hidden by their
/// privacy settings
class MessageForwardOriginHiddenUser extends MessageForwardOrigin {
  MessageForwardOriginHiddenUser({required this.senderName});

  /// [senderName] Name of the sender
  final String senderName;

  static const String CONSTRUCTOR = 'messageForwardOriginHiddenUser';

  static MessageForwardOriginHiddenUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForwardOriginHiddenUser(senderName: json['sender_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sender_name': this.senderName, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
