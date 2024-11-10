import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Text that must be formatted as if inside a blockquote HTML tag; not
/// supported in secret chats
@immutable
class TextEntityTypeBlockQuote extends TextEntityType {
  const TextEntityTypeBlockQuote();

  static const String constructor = 'textEntityTypeBlockQuote';

  static TextEntityTypeBlockQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeBlockQuote();
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
