import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of emoji with their keywords
@immutable
class EmojiKeywords extends TdObject {
  const EmojiKeywords({
    required this.emojiKeywords,
  });

  /// [emojiKeywords] List of emoji with their keywords
  final List<EmojiKeyword> emojiKeywords;

  static const String constructor = 'emojiKeywords';

  static EmojiKeywords? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiKeywords(
      emojiKeywords: List<EmojiKeyword>.from(
          ((json['emoji_keywords'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => EmojiKeyword.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji_keywords': emojiKeywords.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
