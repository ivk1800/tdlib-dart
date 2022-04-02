import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Text that must be formatted as if inside a code HTML tag
class TextEntityTypeCode extends TextEntityType {
  const TextEntityTypeCode();

  static const String CONSTRUCTOR = 'textEntityTypeCode';

  static TextEntityTypeCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeCode();
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
