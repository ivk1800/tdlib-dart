import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Messages in a business account were deleted; for bots only
@immutable
class UpdateBusinessMessagesDeleted extends Update {
  const UpdateBusinessMessagesDeleted({
    required this.connectionId,
    required this.chatId,
    required this.messageIds,
  });

  /// [connectionId] Unique identifier of the business connection
  final String connectionId;

  /// [chatId] Identifier of a chat in the business account in which messages
  /// were deleted
  final int chatId;

  /// [messageIds] Unique message identifiers of the deleted messages
  final List<int> messageIds;

  static const String constructor = 'updateBusinessMessagesDeleted';

  static UpdateBusinessMessagesDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateBusinessMessagesDeleted(
      connectionId: json['connection_id'] as String,
      chatId: json['chat_id'] as int,
      messageIds: List<int>.from(
          ((json['message_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'connection_id': connectionId,
        'chat_id': chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
