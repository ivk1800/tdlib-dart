import '../tdapi.dart';

/// Contains the description of an error in a Telegram Passport element
abstract class PassportElementErrorSource extends TdObject {
  const PassportElementErrorSource();

  static const String CONSTRUCTOR = 'passportElementErrorSource';

  /// Inherited by:
  /// [PassportElementErrorSourceUnspecified]
  /// [PassportElementErrorSourceDataField]
  /// [PassportElementErrorSourceFrontSide]
  /// [PassportElementErrorSourceReverseSide]
  /// [PassportElementErrorSourceSelfie]
  /// [PassportElementErrorSourceTranslationFile]
  /// [PassportElementErrorSourceTranslationFiles]
  /// [PassportElementErrorSourceFile]
  /// [PassportElementErrorSourceFiles]
  static PassportElementErrorSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case PassportElementErrorSourceUnspecified.CONSTRUCTOR:
        return PassportElementErrorSourceUnspecified.fromJson(json);
      case PassportElementErrorSourceDataField.CONSTRUCTOR:
        return PassportElementErrorSourceDataField.fromJson(json);
      case PassportElementErrorSourceFrontSide.CONSTRUCTOR:
        return PassportElementErrorSourceFrontSide.fromJson(json);
      case PassportElementErrorSourceReverseSide.CONSTRUCTOR:
        return PassportElementErrorSourceReverseSide.fromJson(json);
      case PassportElementErrorSourceSelfie.CONSTRUCTOR:
        return PassportElementErrorSourceSelfie.fromJson(json);
      case PassportElementErrorSourceTranslationFile.CONSTRUCTOR:
        return PassportElementErrorSourceTranslationFile.fromJson(json);
      case PassportElementErrorSourceTranslationFiles.CONSTRUCTOR:
        return PassportElementErrorSourceTranslationFiles.fromJson(json);
      case PassportElementErrorSourceFile.CONSTRUCTOR:
        return PassportElementErrorSourceFile.fromJson(json);
      case PassportElementErrorSourceFiles.CONSTRUCTOR:
        return PassportElementErrorSourceFiles.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
