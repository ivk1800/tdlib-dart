import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of sticker
@immutable
abstract class StickerType extends TdObject {
  const StickerType();

  static const String constructor = 'stickerType';

  /// Inherited by:
  /// [StickerTypeCustomEmoji]
  /// [StickerTypeMask]
  /// [StickerTypeRegular]
  static StickerType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StickerTypeCustomEmoji.constructor:
        return StickerTypeCustomEmoji.fromJson(json);
      case StickerTypeMask.constructor:
        return StickerTypeMask.fromJson(json);
      case StickerTypeRegular.constructor:
        return StickerTypeRegular.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
