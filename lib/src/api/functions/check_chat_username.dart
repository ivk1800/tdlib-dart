import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks whether a username can be set for a chat
/// Returns [CheckChatUsernameResult]
@immutable
class CheckChatUsername extends TdFunction {
  const CheckChatUsername({
    required this.chatId,
    required this.username,
  });

  /// [chatId] Chat identifier; must be identifier of a supergroup chat, or a
  /// channel chat, or a private chat with self, or 0 if the chat is being
  /// created
  final int chatId;

  /// [username] Username to be checked
  final String username;

  static const String constructor = 'checkChatUsername';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'username': username,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
