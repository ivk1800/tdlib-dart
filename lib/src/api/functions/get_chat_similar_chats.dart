import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a list of chats similar to the given chat
/// Returns [Chats]
@immutable
class GetChatSimilarChats extends TdFunction {
  const GetChatSimilarChats({
    required this.chatId,
  });

  /// [chatId] Identifier of the target chat; must be an identifier of a channel
  /// chat
  final int chatId;

  static const String constructor = 'getChatSimilarChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
