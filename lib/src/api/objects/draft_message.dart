import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a message draft
@immutable
class DraftMessage extends TdObject {
  const DraftMessage({
    this.replyTo,
    required this.date,
    required this.inputMessageText,
  });

  /// [replyTo] Information about the message to be replied; must be of the type
  /// inputMessageReplyToMessage; may be null if none
  final InputMessageReplyTo? replyTo;

  /// [date] Point in time (Unix timestamp) when the draft was created
  final int date;

  /// [inputMessageText] Content of the message draft; must be of the type
  /// inputMessageText
  final InputMessageContent inputMessageText;

  static const String constructor = 'draftMessage';

  static DraftMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DraftMessage(
      replyTo: InputMessageReplyTo.fromJson(
          json['reply_to'] as Map<String, dynamic>?),
      date: json['date'] as int,
      inputMessageText: InputMessageContent.fromJson(
          json['input_message_text'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reply_to': replyTo?.toJson(),
        'date': date,
        'input_message_text': inputMessageText.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
