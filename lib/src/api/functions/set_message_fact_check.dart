import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the fact-check of a message. Can be only used if
/// messageProperties.can_set_fact_check == true
/// Returns [Ok]
@immutable
class SetMessageFactCheck extends TdFunction {
  const SetMessageFactCheck({
    required this.chatId,
    required this.messageId,
    this.text,
  });

  /// [chatId] The channel chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [text] New text of the fact-check; 0-getOption("fact_check_length_max")
  /// characters; pass null to remove it. Only Bold, Italic, and TextUrl
  /// entities with https://t.me/ links are supported
  final FormattedText? text;

  static const String constructor = 'setMessageFactCheck';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'text': text?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
