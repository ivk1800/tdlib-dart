import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the description of an error in a Telegram Passport element; for
/// bots only
@immutable
abstract class InputPassportElementErrorSource extends TdObject {
  const InputPassportElementErrorSource();

  static const String constructor = 'inputPassportElementErrorSource';

  /// Inherited by:
  /// [InputPassportElementErrorSourceDataField]
  /// [InputPassportElementErrorSourceFile]
  /// [InputPassportElementErrorSourceFiles]
  /// [InputPassportElementErrorSourceFrontSide]
  /// [InputPassportElementErrorSourceReverseSide]
  /// [InputPassportElementErrorSourceSelfie]
  /// [InputPassportElementErrorSourceTranslationFile]
  /// [InputPassportElementErrorSourceTranslationFiles]
  /// [InputPassportElementErrorSourceUnspecified]
  static InputPassportElementErrorSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputPassportElementErrorSourceDataField.constructor:
        return InputPassportElementErrorSourceDataField.fromJson(json);
      case InputPassportElementErrorSourceFile.constructor:
        return InputPassportElementErrorSourceFile.fromJson(json);
      case InputPassportElementErrorSourceFiles.constructor:
        return InputPassportElementErrorSourceFiles.fromJson(json);
      case InputPassportElementErrorSourceFrontSide.constructor:
        return InputPassportElementErrorSourceFrontSide.fromJson(json);
      case InputPassportElementErrorSourceReverseSide.constructor:
        return InputPassportElementErrorSourceReverseSide.fromJson(json);
      case InputPassportElementErrorSourceSelfie.constructor:
        return InputPassportElementErrorSourceSelfie.fromJson(json);
      case InputPassportElementErrorSourceTranslationFile.constructor:
        return InputPassportElementErrorSourceTranslationFile.fromJson(json);
      case InputPassportElementErrorSourceTranslationFiles.constructor:
        return InputPassportElementErrorSourceTranslationFiles.fromJson(json);
      case InputPassportElementErrorSourceUnspecified.constructor:
        return InputPassportElementErrorSourceUnspecified.fromJson(json);
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
