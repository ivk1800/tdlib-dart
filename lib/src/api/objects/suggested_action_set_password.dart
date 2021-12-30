import '../tdapi.dart';

/// Suggests the user to set a 2-step verification password to be able to log
/// in again
class SuggestedActionSetPassword extends SuggestedAction {
  SuggestedActionSetPassword({required this.authorizationDelay});

  /// [authorizationDelay] The number of days to pass between consecutive
  /// authorizations if the user declines to set password
  final int authorizationDelay;

  static const String CONSTRUCTOR = 'suggestedActionSetPassword';

  static SuggestedActionSetPassword? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedActionSetPassword(
        authorizationDelay: json['authorization_delay']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'authorization_delay': this.authorizationDelay, '@type': CONSTRUCTOR};
}
