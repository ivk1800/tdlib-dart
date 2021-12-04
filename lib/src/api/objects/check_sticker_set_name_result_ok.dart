import '../tdapi.dart';

/// The name can be set
class CheckStickerSetNameResultOk extends CheckStickerSetNameResult {
  const CheckStickerSetNameResultOk();

  static const String CONSTRUCTOR = 'checkStickerSetNameResultOk';

  static CheckStickerSetNameResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckStickerSetNameResultOk();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
