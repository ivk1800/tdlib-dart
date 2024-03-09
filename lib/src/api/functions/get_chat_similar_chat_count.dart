import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns approximate number of chats similar to the given chat
/// Returns [Count]
@immutable
class GetChatSimilarChatCount extends TdFunction {
  const GetChatSimilarChatCount({
    required this.chatId,
    required this.returnLocal,
  });

  /// [chatId] Identifier of the target chat; must be an identifier of a channel
  /// chat
  final int chatId;

  /// [returnLocal] Pass true to get the number of chats without sending network
  /// requests, or -1 if the number of chats is unknown locally
  final bool returnLocal;

  static const String constructor = 'getChatSimilarChatCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'return_local': returnLocal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
