import '../tdapi.dart';

/// A message with a poll
class MessagePoll extends MessageContent {
  MessagePoll({required this.poll});

  /// [poll] The poll description
  final Poll poll;

  static const String CONSTRUCTOR = 'messagePoll';

  static MessagePoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePoll(poll: Poll.fromJson(json['poll'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'poll': this.poll.toJson(), '@type': CONSTRUCTOR};
}
