import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of emoji categories
@immutable
class EmojiCategories extends TdObject {
  const EmojiCategories({
    required this.categories,
  });

  /// [categories] List of categories
  final List<EmojiCategory> categories;

  static const String constructor = 'emojiCategories';

  static EmojiCategories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiCategories(
      categories: List<EmojiCategory>.from((json['categories'] ?? [])
          .map((item) => EmojiCategory.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'categories': categories.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
