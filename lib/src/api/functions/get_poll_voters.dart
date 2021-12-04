import '../tdapi.dart';

/// Returns users voted for the specified option in a non-anonymous polls. For
/// optimal performance, the number of returned users is chosen by TDLib
/// Returns [Users]
class GetPollVoters extends TdFunction {
  GetPollVoters(
      {required this.chatId,
      required this.messageId,
      required this.optionId,
      required this.offset,
      required this.limit});

  /// [chatId] Identifier of the chat to which the poll belongs
  final int chatId;

  /// [messageId] Identifier of the message containing the poll
  final int messageId;

  /// [optionId] 0-based identifier of the answer option
  final int optionId;

  /// [offset] Number of users to skip in the result; must be non-negative
  final int offset;

  /// [limit] The maximum number of users to be returned; must be positive and
  /// can't be greater than 50. For optimal performance, the number of returned
  /// users is chosen by TDLib and can be smaller than the specified limit, even
  /// if the end of the voter list has not been reached
  final int limit;

  static const String CONSTRUCTOR = 'getPollVoters';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'option_id': this.optionId,
        'offset': this.offset,
        'limit': this.limit,
        '@type': CONSTRUCTOR
      };
}
