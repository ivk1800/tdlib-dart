import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The number of online group members has changed. This update with non-zero
/// number of online group members is sent only for currently opened chats.
/// There is no guarantee that it will be sent just after the number of online
/// users has changed
@immutable
class UpdateChatOnlineMemberCount extends Update {
  const UpdateChatOnlineMemberCount({
    required this.chatId,
    required this.onlineMemberCount,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [onlineMemberCount] New number of online members in the chat, or 0 if
  /// unknown
  final int onlineMemberCount;

  static const String constructor = 'updateChatOnlineMemberCount';

  static UpdateChatOnlineMemberCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatOnlineMemberCount(
      chatId: json['chat_id'] as int,
      onlineMemberCount: json['online_member_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'online_member_count': onlineMemberCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
