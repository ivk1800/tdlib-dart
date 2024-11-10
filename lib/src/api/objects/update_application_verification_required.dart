import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A request can't be completed unless application verification is performed;
/// for official mobile applications only. The method
/// setApplicationVerificationToken must be called once the verification is
/// completed or failed
@immutable
class UpdateApplicationVerificationRequired extends Update {
  const UpdateApplicationVerificationRequired({
    required this.verificationId,
    required this.nonce,
    required this.cloudProjectNumber,
  });

  /// [verificationId] Unique identifier for the verification process
  final int verificationId;

  /// [nonce] Unique base64url-encoded nonce for the classic Play Integrity
  /// verification (https://developer.android.com/google/play/integrity/classic)
  /// for Android, or a unique string to compare with verify_nonce field from a
  /// push notification for iOS
  final String nonce;

  /// [cloudProjectNumber] Cloud project number to pass to the Play Integrity
  /// API on Android
  final int cloudProjectNumber;

  static const String constructor = 'updateApplicationVerificationRequired';

  static UpdateApplicationVerificationRequired? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateApplicationVerificationRequired(
      verificationId: json['verification_id'] as int,
      nonce: json['nonce'] as String,
      cloudProjectNumber: int.tryParse(json['cloud_project_number']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'verification_id': verificationId,
        'nonce': nonce,
        'cloud_project_number': cloudProjectNumber.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
