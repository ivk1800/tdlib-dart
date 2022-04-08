import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the user answer to a poll. A poll in quiz mode can be answered
/// only once
/// Returns [Ok]
@immutable
class SetPollAnswer extends TdFunction {
  const SetPollAnswer({
    required this.chatId,
    required this.messageId,
    required this.optionIds,
  });

  /// [chatId] Identifier of the chat to which the poll belongs
  final int chatId;

  /// [messageId] Identifier of the message containing the poll
  final int messageId;

  /// [optionIds] 0-based identifiers of answer options, chosen by the user.
  /// User can choose more than 1 answer option only is the poll allows multiple
  /// answers
  final List<int> optionIds;

  static const String constructor = 'setPollAnswer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'option_ids': optionIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
