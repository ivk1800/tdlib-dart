import '../tdapi.dart';

/// Applies if a user enters new credentials using Google Pay
class InputCredentialsGooglePay extends InputCredentials {
  InputCredentialsGooglePay({required this.data});

  /// [data] JSON-encoded data with the credential identifier
  final String data;

  static const String CONSTRUCTOR = 'inputCredentialsGooglePay';

  static InputCredentialsGooglePay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsGooglePay(data: json['data']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'data': this.data, '@type': CONSTRUCTOR};
}
