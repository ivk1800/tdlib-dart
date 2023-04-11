import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The text uses Markdown-style formatting
@immutable
class TextParseModeMarkdown extends TextParseMode {
  const TextParseModeMarkdown({
    required this.version,
  });

  /// [version] Version of the parser: 0 or 1 - Telegram Bot API "Markdown"
  /// parse mode, 2 - Telegram Bot API "MarkdownV2" parse mode
  final int version;

  static const String constructor = 'textParseModeMarkdown';

  static TextParseModeMarkdown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextParseModeMarkdown(
      version: json['version'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'version': version,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
