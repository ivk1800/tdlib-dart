import '../tdapi.dart';

/// Removes a chat from the list of frequently used chats. Supported only if
/// the chat info database is enabled
/// Returns [Ok]
class RemoveTopChat extends TdFunction {
  RemoveTopChat({required this.category, required this.chatId});

  /// [category] Category of frequently used chats
  final TopChatCategory category;

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'removeTopChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'category': this.category.toJson(),
        'chat_id': this.chatId,
        '@type': CONSTRUCTOR
      };
}
