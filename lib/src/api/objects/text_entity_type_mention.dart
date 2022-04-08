import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A mention of a user by their username
@immutable
class TextEntityTypeMention extends TextEntityType {
  const TextEntityTypeMention();

  static const String constructor = 'textEntityTypeMention';

  static TextEntityTypeMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeMention();
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
