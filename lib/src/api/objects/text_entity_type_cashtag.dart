import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A cashtag text, beginning with "$" and consisting of capital English
/// letters (e.g., "$USD")
@immutable
class TextEntityTypeCashtag extends TextEntityType {
  const TextEntityTypeCashtag();

  static const String constructor = 'textEntityTypeCashtag';

  static TextEntityTypeCashtag? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeCashtag();
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
