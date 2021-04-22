import '../tdapi.dart';

/// Accepts Telegram terms of services
/// Returns [Ok]
class AcceptTermsOfService extends TdFunction {
  AcceptTermsOfService({required this.termsOfServiceId});

  /// [termsOfServiceId] Terms of service identifier
  final String termsOfServiceId;

  static const String CONSTRUCTOR = 'acceptTermsOfService';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'terms_of_service_id': this.termsOfServiceId, '@type': CONSTRUCTOR};
}
