import '../tdapi.dart';

/// Describes a sticker that needs to be added to a sticker set
abstract class InputSticker extends TdObject {
  const InputSticker();

  static const String CONSTRUCTOR = 'inputSticker';

  /// Inherited by:
  /// [InputStickerStatic]
  /// [InputStickerAnimated]
  static InputSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case InputStickerStatic.CONSTRUCTOR:
        return InputStickerStatic.fromJson(json);
      case InputStickerAnimated.CONSTRUCTOR:
        return InputStickerAnimated.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
