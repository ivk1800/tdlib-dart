import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes manually or automatically chosen quote from another message
@immutable
class TextQuote extends TdObject {
  const TextQuote({
    required this.text,
    required this.position,
    required this.isManual,
  });

  /// [text] Text of the quote. Only Bold, Italic, Underline, Strikethrough,
  /// Spoiler, and CustomEmoji entities can be present in the text
  final FormattedText text;

  /// [position] Approximate quote position in the original message in UTF-16
  /// code units as specified by the message sender
  final int position;

  /// [isManual] True, if the quote was manually chosen by the message sender
  final bool isManual;

  static const String constructor = 'textQuote';

  static TextQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextQuote(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      position: json['position'] as int,
      isManual: json['is_manual'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'position': position,
        'is_manual': isManual,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
