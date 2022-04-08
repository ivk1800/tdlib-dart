import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks phone number confirmation code
/// Returns [Ok]
@immutable
class CheckPhoneNumberConfirmationCode extends TdFunction {
  const CheckPhoneNumberConfirmationCode({
    required this.code,
  });

  /// [code] Confirmation code to check
  final String code;

  static const String constructor = 'checkPhoneNumberConfirmationCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
