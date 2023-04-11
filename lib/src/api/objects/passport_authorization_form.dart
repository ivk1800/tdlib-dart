import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Passport authorization form that was
/// requested
@immutable
class PassportAuthorizationForm extends TdObject {
  const PassportAuthorizationForm({
    required this.id,
    required this.requiredElements,
    required this.privacyPolicyUrl,
  });

  /// [id] Unique identifier of the authorization form
  final int id;

  /// [requiredElements] Telegram Passport elements that must be provided to
  /// complete the form
  final List<PassportRequiredElement> requiredElements;

  /// [privacyPolicyUrl] URL for the privacy policy of the service; may be empty
  final String privacyPolicyUrl;

  static const String constructor = 'passportAuthorizationForm';

  static PassportAuthorizationForm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportAuthorizationForm(
      id: json['id'] as int,
      requiredElements: List<PassportRequiredElement>.from(
          ((json['required_elements'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PassportRequiredElement.fromJson(item))
              .toList()),
      privacyPolicyUrl: json['privacy_policy_url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'required_elements':
            requiredElements.map((item) => item.toJson()).toList(),
        'privacy_policy_url': privacyPolicyUrl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
