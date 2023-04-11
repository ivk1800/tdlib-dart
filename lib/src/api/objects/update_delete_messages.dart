import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some messages were deleted
@immutable
class UpdateDeleteMessages extends Update {
  const UpdateDeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.isPermanent,
    required this.fromCache,
  });

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

  static const String constructor = 'updateDeleteMessages';

  static UpdateDeleteMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDeleteMessages(
      chatId: json['chat_id'] as int,
      messageIds: List<int>.from(
          ((json['message_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      isPermanent: json['is_permanent'] as bool,
      fromCache: json['from_cache'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'is_permanent': isPermanent,
        'from_cache': fromCache,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
