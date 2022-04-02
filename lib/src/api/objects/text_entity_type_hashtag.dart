import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A hashtag text, beginning with "#"
class TextEntityTypeHashtag extends TextEntityType {
  const TextEntityTypeHashtag();

  static const String CONSTRUCTOR = 'textEntityTypeHashtag';

  static TextEntityTypeHashtag? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeHashtag();
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
