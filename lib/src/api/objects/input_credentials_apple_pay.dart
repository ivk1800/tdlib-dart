import '../tdapi.dart';

/// Applies if a user enters new credentials using Apple Pay
class InputCredentialsApplePay extends InputCredentials {
  InputCredentialsApplePay({required this.data});

  /// [data] JSON-encoded data with the credential identifier
  final String data;

  static const String CONSTRUCTOR = 'inputCredentialsApplePay';

  static InputCredentialsApplePay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsApplePay(data: json['data']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'data': this.data, '@type': CONSTRUCTOR};
}
