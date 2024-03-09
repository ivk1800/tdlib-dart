import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents an emoji with its keyword
@immutable
class EmojiKeyword extends TdObject {
  const EmojiKeyword({
    required this.emoji,
    required this.keyword,
  });

  /// [emoji] The emoji
  final String emoji;

  /// [keyword] The keyword
  final String keyword;

  static const String constructor = 'emojiKeyword';

  static EmojiKeyword? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiKeyword(
      emoji: json['emoji'] as String,
      keyword: json['keyword'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji': emoji,
        'keyword': keyword,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
