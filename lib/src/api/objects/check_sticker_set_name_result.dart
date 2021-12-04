import '../tdapi.dart';

/// Represents result of checking whether a name can be used for a new sticker
/// set
abstract class CheckStickerSetNameResult extends TdObject {
  const CheckStickerSetNameResult();

  static const String CONSTRUCTOR = 'checkStickerSetNameResult';

  /// Inherited by:
  /// [CheckStickerSetNameResultOk]
  /// [CheckStickerSetNameResultNameInvalid]
  /// [CheckStickerSetNameResultNameOccupied]
  static CheckStickerSetNameResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case CheckStickerSetNameResultOk.CONSTRUCTOR:
        return CheckStickerSetNameResultOk.fromJson(json);
      case CheckStickerSetNameResultNameInvalid.CONSTRUCTOR:
        return CheckStickerSetNameResultNameInvalid.fromJson(json);
      case CheckStickerSetNameResultNameOccupied.CONSTRUCTOR:
        return CheckStickerSetNameResultNameOccupied.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
