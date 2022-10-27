import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A spoiler text
@immutable
class TextEntityTypeSpoiler extends TextEntityType {
  const TextEntityTypeSpoiler();

  static const String constructor = 'textEntityTypeSpoiler';

  static TextEntityTypeSpoiler? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeSpoiler();
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
