import '../tdapi.dart';

/// A new chat has been loaded/created. This update is guaranteed to come
/// before the chat identifier is returned to the application. The chat field
/// changes will be reported through separate updates
class UpdateNewChat extends Update {
  UpdateNewChat({required this.chat});

  /// [chat] The chat
  final Chat chat;

  static const String CONSTRUCTOR = 'updateNewChat';

  static UpdateNewChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewChat(chat: Chat.fromJson(json['chat'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat': this.chat.toJson(), '@type': CONSTRUCTOR};
}
