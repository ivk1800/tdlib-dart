import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The category contains a list of similar emoji to search for in getStickers
/// and searchStickers for stickers, or getInlineQueryResults with the bot
/// getOption("animation_search_bot_username") for animations
@immutable
class EmojiCategorySourceSearch extends EmojiCategorySource {
  const EmojiCategorySourceSearch({
    required this.emojis,
  });

  /// [emojis] List of emojis for search for
  final List<String> emojis;

  static const String constructor = 'emojiCategorySourceSearch';

  static EmojiCategorySourceSearch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiCategorySourceSearch(
      emojis: List<String>.from(
          ((json['emojis'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emojis': emojis.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
