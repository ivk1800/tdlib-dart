import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The sticker is a regular sticker
@immutable
class StickerFullTypeRegular extends StickerFullType {
  const StickerFullTypeRegular({
    this.premiumAnimation,
  });

  /// [premiumAnimation] Premium animation of the sticker; may be null. If
  /// present, only Telegram Premium users can use the sticker
  final File? premiumAnimation;

  static const String constructor = 'stickerFullTypeRegular';

  static StickerFullTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerFullTypeRegular(
      premiumAnimation: File.fromJson(json['premium_animation']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'premium_animation': premiumAnimation?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
