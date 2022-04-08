import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes all messages between the specified dates in a chat. Supported only
/// for private chats and basic groups. Messages sent in the last 30 seconds
/// will not be deleted
/// Returns [Ok]
@immutable
class DeleteChatMessagesByDate extends TdFunction {
  const DeleteChatMessagesByDate({
    required this.chatId,
    required this.minDate,
    required this.maxDate,
    required this.revoke,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [minDate] The minimum date of the messages to delete
  final int minDate;

  /// [maxDate] The maximum date of the messages to delete
  final int maxDate;

  /// [revoke] Pass true to delete chat messages for all users; private chats
  /// only
  final bool revoke;

  static const String constructor = 'deleteChatMessagesByDate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'min_date': minDate,
        'max_date': maxDate,
        'revoke': revoke,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
