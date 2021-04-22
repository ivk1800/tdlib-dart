import '../tdapi.dart';

/// Some messages were deleted
class UpdateDeleteMessages extends Update {
  UpdateDeleteMessages(
      {required this.chatId,
      required this.messageIds,
      required this.isPermanent,
      required this.fromCache});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] Identifiers of the deleted messages
  final List<int> messageIds;

  /// [isPermanent] True, if the messages are permanently deleted by a user (as
  /// opposed to just becoming inaccessible)
  final bool isPermanent;

  /// [fromCache] True, if the messages are deleted only from the cache and can
  /// possibly be retrieved again in the future
  final bool fromCache;

  static const String CONSTRUCTOR = 'updateDeleteMessages';

  static UpdateDeleteMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDeleteMessages(
        chatId: json['chat_id'],
        messageIds: List<int>.from(
            (json['message_ids'] ?? []).map((item) => item).toList()),
        isPermanent: json['is_permanent'],
        fromCache: json['from_cache']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'is_permanent': this.isPermanent,
        'from_cache': this.fromCache,
        '@type': CONSTRUCTOR
      };
}
