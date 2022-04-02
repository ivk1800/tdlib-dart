import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A bold text
class TextEntityTypeBold extends TextEntityType {
  const TextEntityTypeBold();

  static const String CONSTRUCTOR = 'textEntityTypeBold';

  static TextEntityTypeBold? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeBold();
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
