import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is unregistered and need to accept terms of service and enter
/// their first name and last name to finish registration. Call registerUser
/// to accept the terms of service and provide the data
@immutable
class AuthorizationStateWaitRegistration extends AuthorizationState {
  const AuthorizationStateWaitRegistration({
    required this.termsOfService,
  });

  /// [termsOfService] Telegram terms of service
  final TermsOfService termsOfService;

  static const String constructor = 'authorizationStateWaitRegistration';

  static AuthorizationStateWaitRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitRegistration(
      termsOfService: TermsOfService.fromJson(
          json['terms_of_service'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'terms_of_service': termsOfService.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
