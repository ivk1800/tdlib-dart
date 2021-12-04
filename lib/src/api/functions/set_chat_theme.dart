import '../tdapi.dart';

/// Changes the chat theme. Supported only in private and secret chats
/// Returns [Ok]
class SetChatTheme extends TdFunction {
  SetChatTheme({required this.chatId, required this.themeName});

  /// [chatId] Chat identifier
  final int chatId;

  /// [themeName] Name of the new chat theme; pass an empty string to return the
  /// default theme
  final String themeName;

  static const String CONSTRUCTOR = 'setChatTheme';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'theme_name': this.themeName,
        '@type': CONSTRUCTOR
      };
}
