import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes messages
/// Returns [Ok]
@immutable
class DeleteMessages extends TdFunction {
  const DeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.revoke,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] Identifiers of the messages to be deleted
  final List<int> messageIds;

  /// [revoke] Pass true to delete messages for all chat members. Always true
  /// for supergroups, channels and secret chats
  final bool revoke;

  static const String constructor = 'deleteMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'revoke': revoke,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
