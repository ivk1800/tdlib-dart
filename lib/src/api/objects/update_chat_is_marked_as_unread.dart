import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A chat was marked as unread or was read
class UpdateChatIsMarkedAsUnread extends Update {
  UpdateChatIsMarkedAsUnread(
      {required this.chatId, required this.isMarkedAsUnread});

  /// [chatId] Chat identifier
  final int chatId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  static const String CONSTRUCTOR = 'updateChatIsMarkedAsUnread';

  static UpdateChatIsMarkedAsUnread? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatIsMarkedAsUnread(
        chatId: json['chat_id'], isMarkedAsUnread: json['is_marked_as_unread']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'is_marked_as_unread': this.isMarkedAsUnread,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
