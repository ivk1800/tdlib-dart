import '../tdapi.dart';

/// Returns information about a chat by its identifier, this is an offline
/// request if the current user is not a bot
/// Returns [Chat]
class GetChat extends TdFunction {
  GetChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'getChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
