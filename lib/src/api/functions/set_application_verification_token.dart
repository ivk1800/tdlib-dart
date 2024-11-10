import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Application verification has been completed. Can be called before
/// authorization
/// Returns [Ok]
@immutable
class SetApplicationVerificationToken extends TdFunction {
  const SetApplicationVerificationToken({
    required this.verificationId,
    required this.token,
  });

  /// [verificationId] Unique identifier for the verification process as
  /// received from updateApplicationVerificationRequired
  final int verificationId;

  /// [token] Play Integrity API token for the Android application, or secret
  /// from push notification for the iOS application; pass an empty string to
  /// abort verification and receive error VERIFICATION_FAILED for the request
  final String token;

  static const String constructor = 'setApplicationVerificationToken';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'verification_id': verificationId,
        'token': token,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
