import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Resends phone number confirmation code
/// Returns [AuthenticationCodeInfo]
@immutable
class ResendPhoneNumberConfirmationCode extends TdFunction {
  const ResendPhoneNumberConfirmationCode();

  static const String constructor = 'resendPhoneNumberConfirmationCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
