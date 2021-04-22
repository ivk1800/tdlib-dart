import '../tdapi.dart';

/// A chat was blocked or unblocked
class UpdateChatIsBlocked extends Update {
  UpdateChatIsBlocked({required this.chatId, required this.isBlocked});

  /// [chatId] Chat identifier
  final int chatId;

  /// [isBlocked] New value of is_blocked
  final bool isBlocked;

  static const String CONSTRUCTOR = 'updateChatIsBlocked';

  static UpdateChatIsBlocked? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatIsBlocked(
        chatId: json['chat_id'], isBlocked: json['is_blocked']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'is_blocked': this.isBlocked,
        '@type': CONSTRUCTOR
      };
}
