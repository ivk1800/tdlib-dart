import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of favorite stickers
@immutable
class PremiumLimitTypeFavoriteStickerCount extends PremiumLimitType {
  const PremiumLimitTypeFavoriteStickerCount();

  static const String constructor = 'premiumLimitTypeFavoriteStickerCount';

  static PremiumLimitTypeFavoriteStickerCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeFavoriteStickerCount();
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
