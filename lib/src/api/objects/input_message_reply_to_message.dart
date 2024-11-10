import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a message to be replied in the same chat and forum topic
@immutable
class InputMessageReplyToMessage extends InputMessageReplyTo {
  const InputMessageReplyToMessage({
    required this.messageId,
    this.quote,
  });

  /// [messageId] The identifier of the message to be replied in the same chat
  /// and forum topic. A message can be replied in the same chat and forum topic
  /// only if messageProperties.can_be_replied
  final int messageId;

  /// [quote] Quote from the message to be replied; pass null if none. Must
  /// always be null for replies in secret chats
  final InputTextQuote? quote;

  static const String constructor = 'inputMessageReplyToMessage';

  static InputMessageReplyToMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageReplyToMessage(
      messageId: json['message_id'] as int,
      quote: InputTextQuote.fromJson(json['quote'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        'quote': quote?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
