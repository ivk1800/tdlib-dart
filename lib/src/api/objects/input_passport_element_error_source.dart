import '../tdapi.dart';

/// Contains the description of an error in a Telegram Passport element; for
/// bots only
abstract class InputPassportElementErrorSource extends TdObject {
  const InputPassportElementErrorSource();

  static const String CONSTRUCTOR = 'inputPassportElementErrorSource';

  /// Inherited by:
  /// [InputPassportElementErrorSourceUnspecified]
  /// [InputPassportElementErrorSourceDataField]
  /// [InputPassportElementErrorSourceFrontSide]
  /// [InputPassportElementErrorSourceReverseSide]
  /// [InputPassportElementErrorSourceSelfie]
  /// [InputPassportElementErrorSourceTranslationFile]
  /// [InputPassportElementErrorSourceTranslationFiles]
  /// [InputPassportElementErrorSourceFile]
  /// [InputPassportElementErrorSourceFiles]
  static InputPassportElementErrorSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case InputPassportElementErrorSourceUnspecified.CONSTRUCTOR:
        return InputPassportElementErrorSourceUnspecified.fromJson(json);
      case InputPassportElementErrorSourceDataField.CONSTRUCTOR:
        return InputPassportElementErrorSourceDataField.fromJson(json);
      case InputPassportElementErrorSourceFrontSide.CONSTRUCTOR:
        return InputPassportElementErrorSourceFrontSide.fromJson(json);
      case InputPassportElementErrorSourceReverseSide.CONSTRUCTOR:
        return InputPassportElementErrorSourceReverseSide.fromJson(json);
      case InputPassportElementErrorSourceSelfie.CONSTRUCTOR:
        return InputPassportElementErrorSourceSelfie.fromJson(json);
      case InputPassportElementErrorSourceTranslationFile.CONSTRUCTOR:
        return InputPassportElementErrorSourceTranslationFile.fromJson(json);
      case InputPassportElementErrorSourceTranslationFiles.CONSTRUCTOR:
        return InputPassportElementErrorSourceTranslationFiles.fromJson(json);
      case InputPassportElementErrorSourceFile.CONSTRUCTOR:
        return InputPassportElementErrorSourceFile.fromJson(json);
      case InputPassportElementErrorSourceFiles.CONSTRUCTOR:
        return InputPassportElementErrorSourceFiles.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
