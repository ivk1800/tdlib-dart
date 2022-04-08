import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the owner of a chat. The current user must be a current owner of
/// the chat. Use the method canTransferOwnership to check whether the
/// ownership can be transferred from the current session. Available only for
/// supergroups and channel chats
/// Returns [Ok]
@immutable
class TransferChatOwnership extends TdFunction {
  const TransferChatOwnership({
    required this.chatId,
    required this.userId,
    required this.password,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] Identifier of the user to which transfer the ownership. The
  /// ownership can't be transferred to a bot or to a deleted user
  final int userId;

  /// [password] The password of the current user
  final String password;

  static const String constructor = 'transferChatOwnership';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'user_id': userId,
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
