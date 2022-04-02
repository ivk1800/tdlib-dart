import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about the current recovery email address
class RecoveryEmailAddress extends TdObject {
  RecoveryEmailAddress({required this.recoveryEmailAddress});

  /// [recoveryEmailAddress] Recovery email address
  final String recoveryEmailAddress;

  static const String CONSTRUCTOR = 'recoveryEmailAddress';

  static RecoveryEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RecoveryEmailAddress(
        recoveryEmailAddress: json['recovery_email_address']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'recovery_email_address': this.recoveryEmailAddress,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
