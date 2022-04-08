import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Parses Bold, Italic, Underline, Strikethrough, Spoiler, Code, Pre,
/// PreCode, TextUrl and MentionName entities contained in the text. Can be
/// called synchronously
/// Returns [FormattedText]
@immutable
class ParseTextEntities extends TdFunction {
  const ParseTextEntities({
    required this.text,
    required this.parseMode,
  });

  /// [text] The text to parse
  final String text;

  /// [parseMode] Text parse mode
  final TextParseMode parseMode;

  static const String constructor = 'parseTextEntities';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'parse_mode': parseMode.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
