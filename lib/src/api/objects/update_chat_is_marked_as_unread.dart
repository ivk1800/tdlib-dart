import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat was marked as unread or was read
@immutable
class UpdateChatIsMarkedAsUnread extends Update {
  const UpdateChatIsMarkedAsUnread({
    required this.chatId,
    required this.isMarkedAsUnread,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  static const String constructor = 'updateChatIsMarkedAsUnread';

  static UpdateChatIsMarkedAsUnread? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatIsMarkedAsUnread(
      chatId: json['chat_id'] as int,
      isMarkedAsUnread: json['is_marked_as_unread'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'is_marked_as_unread': isMarkedAsUnread,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
