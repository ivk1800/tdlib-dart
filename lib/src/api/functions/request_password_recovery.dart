import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Requests to send a 2-step verification password recovery code to an email
/// address that was previously set up
/// Returns [EmailAddressAuthenticationCodeInfo]
@immutable
class RequestPasswordRecovery extends TdFunction {
  const RequestPasswordRecovery();

  static const String constructor = 'requestPasswordRecovery';

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
