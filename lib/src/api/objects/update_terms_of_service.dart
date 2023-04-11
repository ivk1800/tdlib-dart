import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// New terms of service must be accepted by the user. If the terms of service
/// are declined, then the deleteAccount method must be called with the reason
/// "Decline ToS update"
@immutable
class UpdateTermsOfService extends Update {
  const UpdateTermsOfService({
    required this.termsOfServiceId,
    required this.termsOfService,
  });

  /// [termsOfServiceId] Identifier of the terms of service
  final String termsOfServiceId;

  /// [termsOfService]_id Identifier of the terms of service
  final TermsOfService termsOfService;

  static const String constructor = 'updateTermsOfService';

  static UpdateTermsOfService? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTermsOfService(
      termsOfServiceId: json['terms_of_service_id'] as String,
      termsOfService: TermsOfService.fromJson(
          json['terms_of_service'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'terms_of_service_id': termsOfServiceId,
        'terms_of_service': termsOfService.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
