import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the description of an error in a Telegram Passport element
@immutable
abstract class PassportElementErrorSource extends TdObject {
  const PassportElementErrorSource();

  static const String constructor = 'passportElementErrorSource';

  /// Inherited by:
  /// [PassportElementErrorSourceDataField]
  /// [PassportElementErrorSourceFile]
  /// [PassportElementErrorSourceFiles]
  /// [PassportElementErrorSourceFrontSide]
  /// [PassportElementErrorSourceReverseSide]
  /// [PassportElementErrorSourceSelfie]
  /// [PassportElementErrorSourceTranslationFile]
  /// [PassportElementErrorSourceTranslationFiles]
  /// [PassportElementErrorSourceUnspecified]
  static PassportElementErrorSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PassportElementErrorSourceDataField.constructor:
        return PassportElementErrorSourceDataField.fromJson(json);
      case PassportElementErrorSourceFile.constructor:
        return PassportElementErrorSourceFile.fromJson(json);
      case PassportElementErrorSourceFiles.constructor:
        return PassportElementErrorSourceFiles.fromJson(json);
      case PassportElementErrorSourceFrontSide.constructor:
        return PassportElementErrorSourceFrontSide.fromJson(json);
      case PassportElementErrorSourceReverseSide.constructor:
        return PassportElementErrorSourceReverseSide.fromJson(json);
      case PassportElementErrorSourceSelfie.constructor:
        return PassportElementErrorSourceSelfie.fromJson(json);
      case PassportElementErrorSourceTranslationFile.constructor:
        return PassportElementErrorSourceTranslationFile.fromJson(json);
      case PassportElementErrorSourceTranslationFiles.constructor:
        return PassportElementErrorSourceTranslationFiles.fromJson(json);
      case PassportElementErrorSourceUnspecified.constructor:
        return PassportElementErrorSourceUnspecified.fromJson(json);
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
