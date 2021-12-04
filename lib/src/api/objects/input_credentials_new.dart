import '../tdapi.dart';

/// Applies if a user enters new credentials on a payment provider website
class InputCredentialsNew extends InputCredentials {
  InputCredentialsNew({required this.data, required this.allowSave});

  /// [data] JSON-encoded data with the credential identifier from the payment
  /// provider
  final String data;

  /// [allowSave] True, if the credential identifier can be saved on the server
  /// side
  final bool allowSave;

  static const String CONSTRUCTOR = 'inputCredentialsNew';

  static InputCredentialsNew? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsNew(
        data: json['data'], allowSave: json['allow_save']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'data': this.data, 'allow_save': this.allowSave, '@type': CONSTRUCTOR};
}
