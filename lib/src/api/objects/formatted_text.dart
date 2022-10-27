import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A text with some entities
@immutable
class FormattedText extends TdObject {
  const FormattedText({
    required this.text,
    required this.entities,
  });

  /// [text] The text
  final String text;

  /// [entities] Entities contained in the text. Entities can be nested, but
  /// must not mutually intersect with each other.. Pre, Code and PreCode
  /// entities can't contain other entities. Bold, Italic, Underline,
  /// Strikethrough, and Spoiler entities can contain and can be part of any
  /// other entities. All other entities can't contain each other
  final List<TextEntity> entities;

  static const String constructor = 'formattedText';

  static FormattedText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FormattedText(
      text: json['text'],
      entities: List<TextEntity>.from((json['entities'] ?? [])
          .map((item) => TextEntity.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'entities': entities.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
