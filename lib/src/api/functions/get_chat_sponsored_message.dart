import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns sponsored message to be shown in a chat; for channel chats only.
/// Returns a 404 error if there is no sponsored message in the chat
/// Returns [SponsoredMessage]
@immutable
class GetChatSponsoredMessage extends TdFunction {
  const GetChatSponsoredMessage({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  static const String constructor = 'getChatSponsoredMessage';

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
