import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Resends phone number confirmation code
/// Returns [AuthenticationCodeInfo]
class ResendPhoneNumberConfirmationCode extends TdFunction {
  ResendPhoneNumberConfirmationCode();

  static const String CONSTRUCTOR = 'resendPhoneNumberConfirmationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
