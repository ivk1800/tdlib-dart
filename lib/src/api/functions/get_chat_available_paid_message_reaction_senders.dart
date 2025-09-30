import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of message sender identifiers, which can be used to send
/// a paid reaction in a chat
/// Returns [MessageSenders]
@immutable
class GetChatAvailablePaidMessageReactionSenders extends TdFunction {
  const GetChatAvailablePaidMessageReactionSenders({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor =
      'getChatAvailablePaidMessageReactionSenders';

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
