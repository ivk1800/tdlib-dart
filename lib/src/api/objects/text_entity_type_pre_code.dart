import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Text that must be formatted as if inside pre, and code HTML tags
class TextEntityTypePreCode extends TextEntityType {
  TextEntityTypePreCode({required this.language});

  /// [language] Programming language of the code; as defined by the sender
  final String language;

  static const String CONSTRUCTOR = 'textEntityTypePreCode';

  static TextEntityTypePreCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypePreCode(language: json['language']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'language': this.language, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
