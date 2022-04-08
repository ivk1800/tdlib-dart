import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A hashtag text, beginning with "#"
@immutable
class TextEntityTypeHashtag extends TextEntityType {
  const TextEntityTypeHashtag();

  static const String constructor = 'textEntityTypeHashtag';

  static TextEntityTypeHashtag? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeHashtag();
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
