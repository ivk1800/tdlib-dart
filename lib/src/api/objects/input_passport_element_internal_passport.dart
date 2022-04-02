import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A Telegram Passport element to be saved containing the user's internal
/// passport
class InputPassportElementInternalPassport extends InputPassportElement {
  InputPassportElementInternalPassport({required this.internalPassport});

  /// [internalPassport] The internal passport to be saved
  final InputIdentityDocument internalPassport;

  static const String CONSTRUCTOR = 'inputPassportElementInternalPassport';

  static InputPassportElementInternalPassport? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementInternalPassport(
        internalPassport:
            InputIdentityDocument.fromJson(json['internal_passport'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'internal_passport': this.internalPassport.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
