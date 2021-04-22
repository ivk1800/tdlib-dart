import '../tdapi.dart';

/// Information about the email address authentication code that was sent
class EmailAddressAuthenticationCodeInfo extends TdObject {
  EmailAddressAuthenticationCodeInfo(
      {required this.emailAddressPattern, required this.length});

  /// [emailAddressPattern] Pattern of the email address to which an
  /// authentication code was sent
  final String emailAddressPattern;

  /// [length] Length of the code; 0 if unknown
  final int length;

  static const String CONSTRUCTOR = 'emailAddressAuthenticationCodeInfo';

  static EmailAddressAuthenticationCodeInfo? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmailAddressAuthenticationCodeInfo(
        emailAddressPattern: json['email_address_pattern'],
        length: json['length']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'email_address_pattern': this.emailAddressPattern,
        'length': this.length,
        '@type': CONSTRUCTOR
      };
}
