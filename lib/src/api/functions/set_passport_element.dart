import '../tdapi.dart';

/// Adds an element to the user's Telegram Passport. May return an error with
/// a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if
/// the chosen phone number or the chosen email address must be verified first
/// Returns [PassportElement]
class SetPassportElement extends TdFunction {
  SetPassportElement({required this.element, required this.password});

  /// [element] Input Telegram Passport element
  final InputPassportElement element;

  /// [password] Password of the current user
  final String password;

  static const String CONSTRUCTOR = 'setPassportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'element': this.element.toJson(),
        'password': this.password,
        '@type': CONSTRUCTOR
      };
}
