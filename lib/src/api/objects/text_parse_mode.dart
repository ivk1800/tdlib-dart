import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the way the text needs to be parsed for text entities
@immutable
abstract class TextParseMode extends TdObject {
  const TextParseMode();

  static const String constructor = 'textParseMode';

  /// Inherited by:
  /// [TextParseModeHTML]
  /// [TextParseModeMarkdown]
  static TextParseMode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TextParseModeHTML.constructor:
        return TextParseModeHTML.fromJson(json);
      case TextParseModeMarkdown.constructor:
        return TextParseModeMarkdown.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
