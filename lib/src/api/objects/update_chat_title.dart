import '../tdapi.dart';

/// The title of a chat was changed
class UpdateChatTitle extends Update {
  UpdateChatTitle({required this.chatId, required this.title});

  /// [chatId] Chat identifier
  final int chatId;

  /// [title] The new chat title
  final String title;

  static const String CONSTRUCTOR = 'updateChatTitle';

  static UpdateChatTitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatTitle(chatId: json['chat_id'], title: json['title']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'title': this.title, '@type': CONSTRUCTOR};
}
