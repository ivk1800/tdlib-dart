import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks the authentication code sent to confirm a new phone number of the
/// user
/// Returns [Ok]
@immutable
class CheckChangePhoneNumberCode extends TdFunction {
  const CheckChangePhoneNumberCode({
    required this.code,
  });

  /// [code] Authentication code to check
  final String code;

  static const String constructor = 'checkChangePhoneNumberCode';

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
