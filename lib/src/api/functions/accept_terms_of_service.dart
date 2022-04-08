import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Accepts Telegram terms of services
/// Returns [Ok]
@immutable
class AcceptTermsOfService extends TdFunction {
  const AcceptTermsOfService({
    required this.termsOfServiceId,
  });

  /// [termsOfServiceId] Terms of service identifier
  final String termsOfServiceId;

  static const String constructor = 'acceptTermsOfService';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'terms_of_service_id': termsOfServiceId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
