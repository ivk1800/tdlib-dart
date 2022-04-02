import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A chat member was deleted
class MessageChatDeleteMember extends MessageContent {
  MessageChatDeleteMember({required this.userId});

  /// [userId] User identifier of the deleted chat member
  final int userId;

  static const String CONSTRUCTOR = 'messageChatDeleteMember';

  static MessageChatDeleteMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatDeleteMember(userId: json['user_id']);
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
