import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of boosts applied to a chat by a given user; requires
/// administrator rights in the chat; for bots only
/// Returns [FoundChatBoosts]
@immutable
class GetUserChatBoosts extends TdFunction {
  const GetUserChatBoosts({
    required this.chatId,
    required this.userId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [userId] Identifier of the user
  final int userId;

  static const String constructor = 'getUserChatBoosts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
