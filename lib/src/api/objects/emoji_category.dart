import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of similar emoji to search for in getStickers and
/// searchStickers
@immutable
class EmojiCategory extends TdObject {
  const EmojiCategory({
    required this.name,
    required this.icon,
    required this.emojis,
  });

  /// [name] Name of the category
  final String name;

  /// [icon] Custom emoji sticker, which represents icon of the category
  final Sticker icon;

  /// [emojis] List of emojis in the category
  final List<String> emojis;

  static const String constructor = 'emojiCategory';

  static EmojiCategory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiCategory(
      name: json['name'],
      icon: Sticker.fromJson(json['icon'])!,
      emojis: List<String>.from(
          (json['emojis'] ?? []).map((item) => item).toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'icon': icon.toJson(),
        'emojis': emojis.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
