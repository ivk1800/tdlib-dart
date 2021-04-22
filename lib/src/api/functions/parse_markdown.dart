import '../tdapi.dart';

/// Parses Markdown entities in a human-friendly format, ignoring markup
/// errors. Can be called synchronously
/// Returns [FormattedText]
class ParseMarkdown extends TdFunction {
  ParseMarkdown({required this.text});

  /// [text] The text to parse. For example, "__italic__
  final FormattedText text;

  static const String CONSTRUCTOR = 'parseMarkdown';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text.toJson(), '@type': CONSTRUCTOR};
}
