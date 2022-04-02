import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A strikethrough text
class TextEntityTypeStrikethrough extends TextEntityType {
  const TextEntityTypeStrikethrough();

  static const String CONSTRUCTOR = 'textEntityTypeStrikethrough';

  static TextEntityTypeStrikethrough? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeStrikethrough();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
