import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns message senders voted for the specified option in a non-anonymous
/// polls. For optimal performance, the number of returned users is chosen by
/// TDLib
/// Returns [MessageSenders]
@immutable
class GetPollVoters extends TdFunction {
  const GetPollVoters({
    required this.chatId,
    required this.messageId,
    required this.optionId,
    required this.offset,
    required this.limit,
  });

  /// [chatId] Identifier of the chat to which the poll belongs
  final int chatId;

  /// [messageId] Identifier of the message containing the poll
  final int messageId;

  /// [optionId] 0-based identifier of the answer option
  final int optionId;

  /// [offset] Number of voters to skip in the result; must be non-negative
  final int offset;

  /// [limit] The maximum number of voters to be returned; must be positive and
  /// can't be greater than 50. For optimal performance, the number of returned
  /// voters is chosen by TDLib and can be smaller than the specified limit,
  /// even if the end of the voter list has not been reached
  final int limit;

  static const String constructor = 'getPollVoters';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'option_id': optionId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
