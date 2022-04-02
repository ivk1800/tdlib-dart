import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Deletes messages
/// Returns [Ok]
class DeleteMessages extends TdFunction {
  DeleteMessages(
      {required this.chatId, required this.messageIds, required this.revoke});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] Identifiers of the messages to be deleted
  final List<int> messageIds;

  /// [revoke] Pass true to delete messages for all chat members. Always true
  /// for supergroups, channels and secret chats
  final bool revoke;

  static const String CONSTRUCTOR = 'deleteMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'revoke': this.revoke,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
