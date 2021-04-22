import '../tdapi.dart';

/// Informs TDLib that the chat is opened by the user. Many useful activities
/// depend on the chat being opened or closed (e.g., in supergroups and
/// channels all updates are received only for opened chats)
/// Returns [Ok]
class OpenChat extends TdFunction {
  OpenChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'openChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
