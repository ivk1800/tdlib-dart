import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns reactions added for a message, along with their sender
/// Returns [AddedReactions]
@immutable
class GetMessageAddedReactions extends TdFunction {
  const GetMessageAddedReactions({
    required this.chatId,
    required this.messageId,
    required this.reaction,
    required this.offset,
    required this.limit,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [reaction] If non-empty, only added reactions with the specified text
  /// representation will be returned
  final String reaction;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of reactions to be returned; must be positive
  /// and can't be greater than 100
  final int limit;

  static const String constructor = 'getMessageAddedReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'reaction': reaction,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
