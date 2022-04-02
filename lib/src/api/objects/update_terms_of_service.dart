import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// New terms of service must be accepted by the user. If the terms of service
/// are declined, then the deleteAccount method must be called with the reason
/// "Decline ToS update"
class UpdateTermsOfService extends Update {
  UpdateTermsOfService(
      {required this.termsOfServiceId, required this.termsOfService});

  /// [termsOfServiceId] Identifier of the terms of service
  final String termsOfServiceId;

  /// [termsOfService]_id Identifier of the terms of service
  final TermsOfService termsOfService;

  static const String CONSTRUCTOR = 'updateTermsOfService';

  static UpdateTermsOfService? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTermsOfService(
        termsOfServiceId: json['terms_of_service_id'],
        termsOfService: TermsOfService.fromJson(json['terms_of_service'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'terms_of_service_id': this.termsOfServiceId,
        'terms_of_service': this.termsOfService.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
