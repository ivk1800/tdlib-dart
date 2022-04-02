import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An email address
class TextEntityTypeEmailAddress extends TextEntityType {
  const TextEntityTypeEmailAddress();

  static const String CONSTRUCTOR = 'textEntityTypeEmailAddress';

  static TextEntityTypeEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeEmailAddress();
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
