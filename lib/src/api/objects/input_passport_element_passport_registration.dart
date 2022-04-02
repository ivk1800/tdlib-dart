import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A Telegram Passport element to be saved containing the user's passport
/// registration
class InputPassportElementPassportRegistration extends InputPassportElement {
  InputPassportElementPassportRegistration(
      {required this.passportRegistration});

  /// [passportRegistration] The passport registration page to be saved
  final InputPersonalDocument passportRegistration;

  static const String CONSTRUCTOR = 'inputPassportElementPassportRegistration';

  static InputPassportElementPassportRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementPassportRegistration(
        passportRegistration:
            InputPersonalDocument.fromJson(json['passport_registration'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'passport_registration': this.passportRegistration.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
