import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends Firebase Authentication SMS to the specified phone number. Works
/// only when received a code of the type
/// authenticationCodeTypeFirebaseAndroid or authenticationCodeTypeFirebaseIos
/// Returns [Ok]
@immutable
class SendPhoneNumberFirebaseSms extends TdFunction {
  const SendPhoneNumberFirebaseSms({
    required this.token,
  });

  /// [token] SafetyNet Attestation API token for the Android application, or
  /// secret from push notification for the iOS application
  final String token;

  static const String constructor = 'sendPhoneNumberFirebaseSms';

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
