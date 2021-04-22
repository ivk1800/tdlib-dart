import '../tdapi.dart';

/// Chat permissions was changed
class UpdateChatPermissions extends Update {
  UpdateChatPermissions({required this.chatId, required this.permissions});

  /// [chatId] Chat identifier
  final int chatId;

  /// [permissions] The new chat permissions
  final ChatPermissions permissions;

  static const String CONSTRUCTOR = 'updateChatPermissions';

  static UpdateChatPermissions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPermissions(
        chatId: json['chat_id'],
        permissions: ChatPermissions.fromJson(json['permissions'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'permissions': this.permissions.toJson(),
        '@type': CONSTRUCTOR
      };
}
