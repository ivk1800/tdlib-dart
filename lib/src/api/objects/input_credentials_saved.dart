import '../tdapi.dart';

/// Applies if a user chooses some previously saved payment credentials. To
/// use their previously saved credentials, the user must have a valid
/// temporary password
class InputCredentialsSaved extends InputCredentials {
  InputCredentialsSaved({required this.savedCredentialsId});

  /// [savedCredentialsId] Identifier of the saved credentials
  final String savedCredentialsId;

  static const String CONSTRUCTOR = 'inputCredentialsSaved';

  static InputCredentialsSaved? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsSaved(
        savedCredentialsId: json['saved_credentials_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'saved_credentials_id': this.savedCredentialsId, '@type': CONSTRUCTOR};
}
