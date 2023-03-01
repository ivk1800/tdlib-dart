import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains full information about sticker type
@immutable
abstract class StickerFullType extends TdObject {
  const StickerFullType();

  static const String constructor = 'stickerFullType';

  /// Inherited by:
  /// [StickerFullTypeCustomEmoji]
  /// [StickerFullTypeMask]
  /// [StickerFullTypeRegular]
  static StickerFullType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StickerFullTypeCustomEmoji.constructor:
        return StickerFullTypeCustomEmoji.fromJson(json);
      case StickerFullTypeMask.constructor:
        return StickerFullTypeMask.fromJson(json);
      case StickerFullTypeRegular.constructor:
        return StickerFullTypeRegular.fromJson(json);
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
