import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A Telegram Passport element containing the user's email address
class PassportElementEmailAddress extends PassportElement {
  PassportElementEmailAddress({required this.emailAddress});

  /// [emailAddress] Email address
  final String emailAddress;

  static const String CONSTRUCTOR = 'passportElementEmailAddress';

  static PassportElementEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementEmailAddress(emailAddress: json['email_address']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'email_address': this.emailAddress, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
