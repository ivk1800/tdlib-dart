import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds a new member to a chat; requires can_invite_users member right.
/// Members can't be added to private or secret chats
/// Returns [Ok]
@immutable
class AddChatMember extends TdFunction {
  const AddChatMember({
    required this.chatId,
    required this.userId,
    required this.forwardLimit,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] Identifier of the user
  final int userId;

  /// [forwardLimit] The number of earlier messages from the chat to be
  /// forwarded to the new member; up to 100. Ignored for supergroups and
  /// channels, or if the added user is a bot
  final int forwardLimit;

  static const String constructor = 'addChatMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'user_id': userId,
        'forward_limit': forwardLimit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
