import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a poll
@immutable
class MessagePoll extends MessageContent {
  const MessagePoll({
    required this.poll,
  });

  /// [poll] The poll description
  final Poll poll;

  static const String constructor = 'messagePoll';

  static MessagePoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePoll(
      poll: Poll.fromJson(json['poll'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'poll': poll.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
