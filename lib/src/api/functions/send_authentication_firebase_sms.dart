import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends Firebase Authentication SMS to the phone number of the user. Works
/// only when the current authorization state is authorizationStateWaitCode
/// and the server returned code of the type
/// authenticationCodeTypeFirebaseAndroid or authenticationCodeTypeFirebaseIos
/// Returns [Ok]
@immutable
class SendAuthenticationFirebaseSms extends TdFunction {
  const SendAuthenticationFirebaseSms({
    required this.token,
  });

  /// [token] Play Integrity API or SafetyNet Attestation API token for the
  /// Android application, or secret from push notification for the iOS
  /// application
  final String token;

  static const String constructor = 'sendAuthenticationFirebaseSms';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'token': token,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
