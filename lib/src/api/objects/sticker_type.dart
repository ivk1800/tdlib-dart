import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of a sticker
@immutable
abstract class StickerType extends TdObject {
  const StickerType();

  static const String constructor = 'stickerType';

  /// Inherited by:
  /// [StickerTypeAnimated]
  /// [StickerTypeMask]
  /// [StickerTypeStatic]
  /// [StickerTypeVideo]
  static StickerType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StickerTypeAnimated.constructor:
        return StickerTypeAnimated.fromJson(json);
      case StickerTypeMask.constructor:
        return StickerTypeMask.fromJson(json);
      case StickerTypeStatic.constructor:
        return StickerTypeStatic.fromJson(json);
      case StickerTypeVideo.constructor:
        return StickerTypeVideo.fromJson(json);
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
