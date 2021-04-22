import '../tdapi.dart';

/// A message with a poll. Polls can't be sent to secret chats. Polls can be
/// sent only to a private chat with a bot
class InputMessagePoll extends InputMessageContent {
  InputMessagePoll(
      {required this.question,
      required this.options,
      required this.isAnonymous,
      required this.type,
      required this.openPeriod,
      required this.closeDate,
      required this.isClosed});

  /// [question] Poll question; 1-255 characters (up to 300 characters for bots)
  ///
  final String question;

  /// [options] List of poll answer options, 2-10 strings 1-100 characters each
  final List<String> options;

  /// [isAnonymous] True, if the poll voters are anonymous. Non-anonymous polls
  /// can't be sent or forwarded to channels
  final bool isAnonymous;

  /// [type] Type of the poll
  final PollType type;

  /// [openPeriod] Amount of time the poll will be active after creation, in
  /// seconds; for bots only
  final int openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will be
  /// automatically closed; for bots only
  final int closeDate;

  /// [isClosed] True, if the poll needs to be sent already closed; for bots
  /// only
  final bool isClosed;

  static const String CONSTRUCTOR = 'inputMessagePoll';

  static InputMessagePoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessagePoll(
        question: json['question'],
        options: List<String>.from(
            (json['options'] ?? []).map((item) => item).toList()),
        isAnonymous: json['is_anonymous'],
        type: PollType.fromJson(json['type'])!,
        openPeriod: json['open_period'],
        closeDate: json['close_date'],
        isClosed: json['is_closed']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'question': this.question,
        'options': options.map((item) => item).toList(),
        'is_anonymous': this.isAnonymous,
        'type': this.type.toJson(),
        'open_period': this.openPeriod,
        'close_date': this.closeDate,
        'is_closed': this.isClosed,
        '@type': CONSTRUCTOR
      };
}
