import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Parses Markdown entities in a human-friendly format, ignoring markup
/// errors. Can be called synchronously
/// Returns [FormattedText]
@immutable
class ParseMarkdown extends TdFunction {
  const ParseMarkdown({
    required this.text,
  });

  /// [text] The text to parse. For example, "__italic__ ~~strikethrough~~
  /// ||spoiler|| **bold** `code` ```pre``` __[italic__ text_url](telegram.org)
  /// __italic**bold italic__bold**"
  final FormattedText text;

  static const String constructor = 'parseMarkdown';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
