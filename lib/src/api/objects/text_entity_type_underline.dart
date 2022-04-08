import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An underlined text
@immutable
class TextEntityTypeUnderline extends TextEntityType {
  const TextEntityTypeUnderline();

  static const String constructor = 'textEntityTypeUnderline';

  static TextEntityTypeUnderline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeUnderline();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
