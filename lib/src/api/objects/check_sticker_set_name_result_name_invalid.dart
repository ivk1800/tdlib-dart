import '../tdapi.dart';

/// The name is invalid
class CheckStickerSetNameResultNameInvalid extends CheckStickerSetNameResult {
  const CheckStickerSetNameResultNameInvalid();

  static const String CONSTRUCTOR = 'checkStickerSetNameResultNameInvalid';

  static CheckStickerSetNameResultNameInvalid? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckStickerSetNameResultNameInvalid();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
