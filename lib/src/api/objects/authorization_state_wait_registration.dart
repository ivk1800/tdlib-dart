import '../tdapi.dart';

/// The user is unregistered and need to accept terms of service and enter
/// their first name and last name to finish registration
class AuthorizationStateWaitRegistration extends AuthorizationState {
  AuthorizationStateWaitRegistration({required this.termsOfService});

  /// [termsOfService] Telegram terms of service
  final TermsOfService termsOfService;

  static const String CONSTRUCTOR = 'authorizationStateWaitRegistration';

  static AuthorizationStateWaitRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitRegistration(
        termsOfService: TermsOfService.fromJson(json['terms_of_service'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'terms_of_service': this.termsOfService.toJson(), '@type': CONSTRUCTOR};
}
