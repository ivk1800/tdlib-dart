import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes manually chosen quote from another message
@immutable
class InputTextQuote extends TdObject {
  const InputTextQuote({
    required this.text,
    required this.position,
  });

  /// [text] Text of the quote; 0-getOption("message_reply_quote_length_max")
  /// characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and
  /// CustomEmoji entities are allowed to be kept and must be kept in the quote
  final FormattedText text;

  /// [position] Quote position in the original message in UTF-16 code units
  final int position;

  static const String constructor = 'inputTextQuote';

  static InputTextQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputTextQuote(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      position: json['position'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'position': position,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
