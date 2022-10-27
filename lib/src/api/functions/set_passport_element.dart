import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds an element to the user's Telegram Passport. May return an error with
/// a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if
/// the chosen phone number or the chosen email address must be verified first
/// Returns [PassportElement]
@immutable
class SetPassportElement extends TdFunction {
  const SetPassportElement({
    required this.element,
    required this.password,
  });

  /// [element] Input Telegram Passport element
  final InputPassportElement element;

  /// [password] The 2-step verification password of the current user
  final String password;

  static const String constructor = 'setPassportElement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'element': element.toJson(),
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
