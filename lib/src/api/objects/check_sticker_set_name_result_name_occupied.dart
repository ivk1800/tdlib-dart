import '../tdapi.dart';

/// The name is occupied
class CheckStickerSetNameResultNameOccupied extends CheckStickerSetNameResult {
  const CheckStickerSetNameResultNameOccupied();

  static const String CONSTRUCTOR = 'checkStickerSetNameResultNameOccupied';

  static CheckStickerSetNameResultNameOccupied? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckStickerSetNameResultNameOccupied();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
