import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns available emoji categories
/// Returns [EmojiCategories]
@immutable
class GetEmojiCategories extends TdFunction {
  const GetEmojiCategories({
    this.type,
  });

  /// [type] Type of emoji categories to return; pass null to get default emoji
  /// categories
  final EmojiCategoryType? type;

  static const String constructor = 'getEmojiCategories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
