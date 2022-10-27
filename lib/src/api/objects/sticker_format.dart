import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes format of a sticker
@immutable
abstract class StickerFormat extends TdObject {
  const StickerFormat();

  static const String constructor = 'stickerFormat';

  /// Inherited by:
  /// [StickerFormatTgs]
  /// [StickerFormatWebm]
  /// [StickerFormatWebp]
  static StickerFormat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StickerFormatTgs.constructor:
        return StickerFormatTgs.fromJson(json);
      case StickerFormatWebm.constructor:
        return StickerFormatWebm.fromJson(json);
      case StickerFormatWebp.constructor:
        return StickerFormatWebp.fromJson(json);
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
