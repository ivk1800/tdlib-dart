import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Text that must be formatted as if inside a pre HTML tag
class TextEntityTypePre extends TextEntityType {
  const TextEntityTypePre();

  static const String CONSTRUCTOR = 'textEntityTypePre';

  static TextEntityTypePre? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypePre();
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
