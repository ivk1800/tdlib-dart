import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the user answer to a poll. A poll in quiz mode can be answered
/// only once
/// Returns [Ok]
class SetPollAnswer extends TdFunction {
  SetPollAnswer(
      {required this.chatId, required this.messageId, required this.optionIds});

  /// [chatId] Identifier of the chat to which the poll belongs
  final int chatId;

  /// [messageId] Identifier of the message containing the poll
  final int messageId;

  /// [optionIds] 0-based identifiers of answer options, chosen by the user.
  /// User can choose more than 1 answer option only is the poll allows multiple
  /// answers
  final List<int> optionIds;

  static const String CONSTRUCTOR = 'setPollAnswer';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'option_ids': optionIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
