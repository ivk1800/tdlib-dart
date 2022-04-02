import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the marked as unread state of a chat
/// Returns [Ok]
class ToggleChatIsMarkedAsUnread extends TdFunction {
  ToggleChatIsMarkedAsUnread(
      {required this.chatId, required this.isMarkedAsUnread});

  /// [chatId] Chat identifier
  final int chatId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  static const String CONSTRUCTOR = 'toggleChatIsMarkedAsUnread';

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
