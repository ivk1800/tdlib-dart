import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a sticker that needs to be added to a sticker set
@immutable
abstract class InputSticker extends TdObject {
  const InputSticker();

  static const String constructor = 'inputSticker';

  /// Inherited by:
  /// [InputStickerStatic]
  /// [InputStickerAnimated]
  static InputSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputStickerStatic.constructor:
        return InputStickerStatic.fromJson(json);
      case InputStickerAnimated.constructor:
        return InputStickerAnimated.fromJson(json);
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
