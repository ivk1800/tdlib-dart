import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a newest pinned message in the chat. Returns a
/// 404 error if the message doesn't exist
/// Returns [Message]
@immutable
class GetChatPinnedMessage extends TdFunction {
  const GetChatPinnedMessage({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  static const String constructor = 'getChatPinnedMessage';

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
